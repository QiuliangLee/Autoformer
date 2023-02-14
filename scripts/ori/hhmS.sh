
#hehua 1min 单变量
# 预测24
# 1、Informer
python -u run.py \
  --model Informer \
  --learning_rate 0.0001\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 2、Transformer
python -u run.py \
  --model Transformer \
  --learning_rate 0.0001\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 3、Autoformer
python -u run.py \
  --model Autoformer \
  --learning_rate 0.0001\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 4、Reformer
python -u run.py \
  --model Reformer \
  --learning_rate 0.0001\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 5、InformerStack
python -u run.py \
  --model InformerStack \
  --learning_rate 0.0001\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10

#  预测 48
# 1、Informer
python -u run.py \
  --model Informer \
  --learning_rate 0.001\
  --seq_len 336 \
  --label_len 48 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 2、Transformer
python -u run.py \
  --model Transformer \
  --learning_rate 0.001\
  --seq_len 336 \
  --label_len 48 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 3、Autoformer
python -u run.py \
  --model Autoformer \
  --learning_rate 0.001\
  --seq_len 336 \
  --label_len 48 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 4、Reformer
python -u run.py \
  --model Reformer \
  --learning_rate 0.001\
  --seq_len 336 \
  --label_len 48 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10
# 5、InformerStack
python -u run.py \
  --model Informer \
  --learning_rate 0.001\
  --seq_len 336 \
  --label_len 48 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration' \
  --num_workers 10

#  预测168
# 1、Informer
python -u run.py \
  --model Informer \
  --learning_rate 0.1\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 2、Transformer
python -u run.py \
  --model Transformer \
  --learning_rate 0.1\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 3、Autoformer
python -u run.py \
  --model Autoformer \
  --learning_rate 0.1\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 4、Reformer
python -u run.py \
  --model Reformer \
  --learning_rate 0.1\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 5、InformerStack
python -u run.py \
  --model Informer \
  --learning_rate 0.1\
  --seq_len 336 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'

#  预测 336
# 1、Informer
python -u run.py \
  --model Informer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_336_168\
  --data 1min \
  --features S \
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 2、Transformer
python -u run.py \
  --model Transformer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_336_168\
  --data 1min \
  --features S \
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 3、Autoformer
python -u run.py \
  --model Autoformer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_336_168\
  --data 1min \
  --features S \
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 4、Reformer
python -u run.py \
  --model Reformer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_336_168\
  --data 1min \
  --features S \
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 5、InformerStack
python -u run.py \
  --model Informer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_336_168\
  --data 1min \
  --features S \
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'

# 预测 720
# 1、Informer
python -u run.py \
  --model Informer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 2、Transformer
python -u run.py \
  --model Transformer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 3、Autoformer
python -u run.py \
  --model Autoformer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 4、Reformer
python -u run.py \
  --model Reformer \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'
# 5、InformerStack
python -u run.py \
  --model InformerStack \
  --learning_rate 0.01\
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 1min.csv \
  --model_id 1min_96_720 \
  --data 1min \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --freq t \
  --target 'Flow Duration'



