# uk 单变量
# 预测24
# 1、Informer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_96_24 --model Informer --data uk --seq_len 96 --label_len 96 --pred_len 24 --target 'size' --feature S
# 2、Transformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_96_24 --model Transformer --data uk --seq_len 96 --label_len 96 --pred_len 24 --target 'size' --feature S
# 3、Autoformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_96_24 --model Autoformer --data uk --seq_len 96 --label_len 96 --pred_len 24 --target 'size' --feature S
# 4、Reformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_96_24 --model Reformer --data uk --seq_len 96 --label_len 96 --pred_len 24 --target 'size' --feature S
# 5、InformerStack
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv  --model informerstack --data uk --seq_len 96 --label_len 96 --pred_len 24 --target 'size' --feature S

#  预测 48
# 1、Informer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_48 --model Informer --data uk  --seq_len 168 --label_len 96 --pred_len 48 --target 'size' --feature S
# 2、Transformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_48 --model Transformer --data uk  --seq_len 168 --label_len 96 --pred_len 48 --target 'size' --feature S
# 3、Autoformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_48 --model Autoformer --data uk  --seq_len 168 --label_len 96 --pred_len 48 --target 'size' --feature S
# 4、Reformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_48 --model Reformer --data uk  --seq_len 168 --label_len 96 --pred_len 48 --target 'size' --feature S
# 5、InformerStack
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv  --model informerstack --data uk --seq_len 168 --label_len 96 --pred_len 48 --target 'size' --feature S

#  预测168
# 1、Informer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_720_168 --model Informer --data uk  --seq_len 720 --label_len 168 --pred_len 168 --target 'size' --feature S
# 2、Transformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_720_168 --model Transformer --data uk --seq_len 720 --label_len 168 --pred_len 168 --target 'size' --feature S
# 3、Autoformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_720_168 --model Autoformer --data uk --seq_len 720 --label_len 168 --pred_len 168 --target 'size' --feature S
# 4、Reformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_720_168 --model Reformer --data uk --seq_len 720 --label_len 168 --pred_len 168 --target 'size' --feature S
# 5、InformerStack
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv  --model informerstack --data uk --seq_len 720 --label_len 168 --pred_len 168 --target 'size' --feature S

#  预测 336
# 1、Informer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_336 --model Informer --data uk  --seq_len 168 --label_len 96 --pred_len 336 --target 'size' --feature S
# 2、Transformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_336 --model Transformer --data uk  --seq_len 168 --label_len 96 --pred_len 336 --target 'size' --feature S
# 3、Autoformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_336 --model Autoformer --data uk  --seq_len 168 --label_len 96 --pred_len 336 --target 'size' --feature S
# 4、Reformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_336 --model Reformer --data uk  --seq_len 168 --label_len 96 --pred_len 336 --target 'size' --feature S
# 5、InformerStack
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv  --model informerstack --data uk --seq_len 168 --label_len 96 --pred_len 336 --target 'size' --feature S

# 预测 720
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_720 --model Informer --data uk  --seq_len 168 --label_len 168 --pred_len 720 --target 'size' --feature S
# 1、Informer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_720 --model Informer --data uk  --seq_len 168 --label_len 168 --pred_len 720 --target 'size' --feature S
# 2、Transformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_720 --model Transformer --data uk  --seq_len 168 --label_len 168 --pred_len 720 --target 'size' --feature S
# 3、Autoformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_720 --model Autoformer --data uk  --seq_len 168 --label_len 168 --pred_len 720 --target 'size' --feature S
# 4、Reformer
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv --model_id uk_168_720 --model Reformer --data uk  --seq_len 168 --label_len 168 --pred_len 720 --target 'size' --feature S
# 5、InformerStack
python -u run.py --root_path ./dataset/hehua/ --data_path uk.csv  --model informerstack --data uk --seq_len 168 --label_len 168 --pred_len 720 --target 'size' --feature S
