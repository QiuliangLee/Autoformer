import argparse
import logging
import random

import nni
from nni.utils import merge_parameter
import numpy as np
import torch

from exp.exp_main import Exp_Main

logger = logging.getLogger('mnist_AutoML')

# 原理参考：https://blog.csdn.net/fluentn/article/details/115392229
# 文件格式：时间列名是date,XXX
def initialize_parameter():
    parser = argparse.ArgumentParser(description='Autoformer & Transformer family for Time Series Forecasting')

    # basic config
    parser.add_argument('--is_training', type=int, default=1, help='status')
    parser.add_argument('--model_id', type=str, default='test', help='model id')
    parser.add_argument('--model', type=str, default='Informer',
                        help='model name, options: [Autoformer, Informer, Transformer]')

    # data loader
    parser.add_argument('--data', type=str, default='1min', help='data them，取决了在data parse中寻找的是哪个数据文件的配置,很重要')
    parser.add_argument('--root_path', type=str, default='./dataset/hehua/', help='数据文件的根路径（root path of the data file）')
    parser.add_argument('--data_path', type=str, default='1min.csv', help='data file')
    parser.add_argument('--features', type=str, default='S',
                        help='预测任务选项（forecasting task, options）:[M, S, MS]; '
                             'M:多变量预测多元（multivariate predict multivariate）, '
                             'S:单变量预测单变量（univariate predict univariate）, '
                             'MS:多变量预测单变量（multivariate predict univariate）')
    parser.add_argument('--target', type=str, default='Pkt Size Avg', help='S或MS任务中的目标特征列名（target feature in S or MS task）')
    parser.add_argument('--freq', type=str, default='t',
                        help='时间特征编码的频率（freq for time features encoding）, '
                             '选项（options）:[s:secondly, t:minutely, h:hourly, d:daily, b:工作日（business days）, w:weekly, m:monthly], '
                             '你也可以使用更详细的频率，比如15分钟或3小时（you can also use more detailed freq like 15min or 3h）')
    parser.add_argument('--checkpoints', type=str, default='./checkpoints/', help='模型检查点的位置（location of model checkpoints）')

    # forecasting task
    # seq_len其实就是n个滑动窗口的大小，pred_len就是一个滑动窗口的大小
    parser.add_argument('--seq_len', type=int, default=96,
                        help='Informer编码器的输入序列长度（input sequence length of Informer encoder）原始默认为96')
    parser.add_argument('--label_len', type=int, default=48,
                        help='inform解码器的开始令牌长度（start token length of Informer decoder），原始默认为48')
    # pred_len就是要预测的序列长度（要预测未来多少个时刻的数据），也就是Decoder中置零的那部分的长度
    parser.add_argument('--pred_len', type=int, default=24,
                        help='预测序列长度（prediction sequence length）原始默认为24')

    # model define
    parser.add_argument('--bucket_size', type=int, default=4, help='for Reformer')
    parser.add_argument('--n_hashes', type=int, default=4, help='for Reformer')
    parser.add_argument('--enc_in', type=int, default=1, help='编码器输入大小（encoder input size）--- encoder的输入维度')
    parser.add_argument('--dec_in', type=int, default=1, help='解码器输入大小（decoder input size）---decoder的输入维度')
    parser.add_argument('--c_out', type=int, default=1, help='输出尺寸（output size）---decoder的输出维度')
    parser.add_argument('--d_model', type=int, default=512,
                        help='模型维数（dimension of model）默认是512---self-attention的输入和输出向量维度')
    parser.add_argument('--n_heads', type=int, default=8, help='（num of heads）multi-head self-attention的head数')
    parser.add_argument('--e_layers', type=int, default=2, help='编码器层数（num of encoder layers）')
    parser.add_argument('--d_layers', type=int, default=1, help='解码器层数（num of decoder layers）')
    parser.add_argument('--d_ff', type=int, default=2048, help='fcn维度（dimension of fcn），默认是2048'
                                                               '---self-attention后面的FFN的中间向量表征维度')
    parser.add_argument('--mix', action='store_false', help='use mix attention in generative decoder', default=True)
    """
    小数据集的预测可以先使用默认参数或适当减小d_model和d_ff的大小
    预测未来短期时间1~3个月的时候，d_model和d_ff进行设置的小，如16、32或者16,16；
    预测未来短期时间4个月及以上的时候，d_model和d_ff进行设置的稍微大一点点，如16、64或者32,64；32,128。
    """
    parser.add_argument('--moving_avg', type=int, default=25, help='window size of moving average')
    parser.add_argument('--factor', type=int, default=1, help='attn factor---probsparse attention中设置的因子系数')
    parser.add_argument('--distil', action='store_false',
                        help='是否在编码器中不使用知识蒸馏，使用此参数意味着不使用蒸馏'
                             '（whether to use distilling in encoder, using this argument means not using distilling）',
                        default=True)
    parser.add_argument('--dropout', type=float, default=0.05,
                        help='dropout，长序列预测用0.5，短期预测用0.05~0.2(一般是0.05)，'
                             '如果shuffle_flag的训练部分为True，那么该值直接设置为0;模型参数多设置为0.5，要在0.5范围内；视情况而定。----')
    parser.add_argument('--embed', type=str, default='timeF',
                        help='时间特征编码，选项：[timeF, fixed, learned]---输入数据的时序编码方式'
                             '（time features encoding, options:[timeF, fixed, learned]）')
    parser.add_argument('--activation', type=str, default='gelu', help='activation')
    parser.add_argument('--output_attention', action='store_true', help='是否在编码器中输出注意力'
                                                                        '---是否选择让informer的encoder输出attention以便进行分析'
                                                                        '（whether to output attention in ecoder）')
    parser.add_argument('--do_predict', action='store_true', help='是否预测看不见的未来数据'
                                                                  '（whether to predict unseen future data）')

    # optimization
    parser.add_argument('--num_workers', type=int, default=0, help='工作的数据加载器数量 data loader num workers')
    parser.add_argument('--itr', type=int, default=1, help='次实验 experiments times')
    parser.add_argument('--train_epochs', type=int, default=10, help='train epochs')
    parser.add_argument('--batch_size', type=int, default=32, help='batch size of train input data')
    parser.add_argument('--patience', type=int, default=3, help='提前停止的连续轮数 early stopping patience')
    parser.add_argument('--learning_rate', type=float, default=0.0001, help='初始学习率')
    parser.add_argument('--des', type=str, default='test', help='实验描述 exp description')
    parser.add_argument('--loss', type=str, default='mae', help='损失函数选项：loss function【mse、huberloss、L1loss】')
    parser.add_argument('--lradj', type=str, default='type1', help='校正的学习率adjust learning rate----------------------学习率更新算法')
    parser.add_argument('--use_amp', action='store_true', help='使用自动混合精度训练 use automatic mixed precision training', default=False)

    # GPU
    parser.add_argument('--use_gpu', type=bool, default=True, help='use gpu')
    parser.add_argument('--gpu', type=int, default=0, help='gpu')
    parser.add_argument('--use_multi_gpu', action='store_true', help='use multiple gpus', default=False)
    parser.add_argument('--devices', type=str, default='0,1,2,3', help='device ids of multile gpus')

    args = parser.parse_args()
    return args


if __name__ == '__main__':
    fix_seed = 2021
    random.seed(fix_seed)
    torch.manual_seed(fix_seed)
    torch.cuda.manual_seed_all(fix_seed)
    np.random.seed(fix_seed)
    torch.backends.cudnn.deterministic=True

    # 进行parser的变量初始化，获取实例。
    args = initialize_parameter()
    print("model：\t", args.model)

    # get parameters form tuner, 这会获得一组搜索空间中的参数
    tuner_params = nni.get_next_parameter()
    logger.debug(tuner_params)
    params = vars(merge_parameter(args, tuner_params))
    params.update(tuner_params)

    # 判断GPU是否能够使用，并获取标识
    args.use_gpu = True if torch.cuda.is_available() and args.use_gpu else False

    if args.use_gpu and args.use_multi_gpu:
        args.dvices = args.devices.replace(' ', '')
        device_ids = args.devices.split(',')
        args.device_ids = [int(id_) for id_ in device_ids]
        args.gpu = args.device_ids[0]

    print('Args in experiment:')
    print(args)

    Exp = Exp_Main

    if args.is_training:
        for ii in range(args.itr):
            # setting record of experiments
            setting = '{}_{}_{}_ft{}_sl{}_ll{}_pl{}_dm{}_nh{}_el{}_dl{}_df{}_fc{}_eb{}_dt{}_{}_{}'.format(
                args.model_id,
                args.model,
                args.data,
                args.features,
                args.seq_len,
                args.label_len,
                args.pred_len,
                args.d_model,
                args.n_heads,
                args.e_layers,
                args.d_layers,
                args.d_ff,
                args.factor,
                args.embed,
                args.distil,
                args.des, ii)

            exp = Exp(args)  # set experiments
            print('>>>>>>>start training : {}>>>>>>>>>>>>>>>>>>>>>>>>>>'.format(setting))
            exp.train(setting)

            print('>>>>>>>testing : {}<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'.format(setting))
            mape = exp.test(setting)

            nni.report_final_result(mape)

            if args.do_predict:
                print('>>>>>>>predicting : {}<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'.format(setting))
                exp.predict(setting, True)

            torch.cuda.empty_cache()
    else:
        ii = 0
        setting = '{}_{}_{}_ft{}_sl{}_ll{}_pl{}_dm{}_nh{}_el{}_dl{}_df{}_fc{}_eb{}_dt{}_{}_{}'.format(args.model_id,
                                                                                                      args.model,
                                                                                                      args.data,
                                                                                                      args.features,
                                                                                                      args.seq_len,
                                                                                                      args.label_len,
                                                                                                      args.pred_len,
                                                                                                      args.d_model,
                                                                                                      args.n_heads,
                                                                                                      args.e_layers,
                                                                                                      args.d_layers,
                                                                                                      args.d_ff,
                                                                                                      args.factor,
                                                                                                      args.embed,
                                                                                                      args.distil,
                                                                                                      args.des, ii)

        exp = Exp(args)  # set experiments
        print('>>>>>>>testing : {}<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'.format(setting))
        exp.test(setting, test=1)
        torch.cuda.empty_cache()
