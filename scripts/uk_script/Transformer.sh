# 预测24
python -u run.py \
  --model Transformer \
  --learning_rate 0.0001\
  --seq_len 96 \
  --label_len 96 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path uk.csv \
  --model_id uk_96_24 \
  --data uk \
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
  --target 'size' \
  --num_workers 10
# 预测48
python -u run.py \
  --model Transformer \
  --learning_rate 0.0001\
  --seq_len 168 \
  --label_len 96 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path uk.csv \
  --model_id uk_168_48 \
  --data uk \
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
  --target 'size' \
  --num_workers 10
# 预测168
python -u run.py \
  --model Transformer \
  --learning_rate 0.0001\
  --seq_len 720 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path uk.csv \
  --model_id uk_720_168 \
  --data uk \
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
  --target 'size' \
  --num_workers 10
# 预测336
python -u run.py \
  --model Transformer \
  --learning_rate 0.0001\
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path uk.csv \
  --model_id uk_168_336 \
  --data uk \
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
  --target 'size' \
  --num_workers 10
# 预测720
python -u run.py \
  --model Transformer \
  --learning_rate 0.0001\
  --seq_len 168 \
  --label_len 168 \
  --pred_len 720 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path uk.csv \
  --model_id uk_168_720 \
  --data uk \
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
  --target 'size' \
  --num_workers 10