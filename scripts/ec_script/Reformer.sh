# 预测24
python -u run.py \
  --model Reformer \
  --learning_rate 0.0001\
  --seq_len 96 \
  --label_len 96 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path ec.csv \
  --model_id ec_96_24 \
  --data ec \
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
  --model Reformer \
  --learning_rate 0.0001\
  --seq_len 169 \
  --label_len 96 \
  --pred_len 48 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path ec.csv \
  --model_id ec_168_48 \
  --data ec \
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
  --model Reformer \
  --learning_rate 0.0001\
  --seq_len 720 \
  --label_len 168 \
  --pred_len 168 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path ec.csv \
  --model_id ec_720_168 \
  --data ec \
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
  --model Reformer \
  --learning_rate 0.0001\
  --seq_len 168 \
  --label_len 96 \
  --pred_len 336 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path ec.csv \
  --model_id ec_168_336 \
  --data ec \
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
  --model Reformer \
  --learning_rate 0.0001\
  --seq_len 168 \
  --label_len 168 \
  --pred_len 720 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path ec.csv \
  --model_id ec_168_720 \
  --data ec \
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