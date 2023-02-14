# 预测24
python -u run.py \
  --model Informer \
  --learning_rate 0.001\
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --is_training 1 \
  --root_path ./dataset/hehua/ \
  --data_path 60min.csv \
  --model_id 60min_96_720 \
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
  --freq h \
  --target 'Flow Duration' \
  --num_workers 10 \
  --d_model 16 \
  --d_ff 32
# 预测48
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
  --freq h \
  --target 'Flow Duration' \
  --num_workers 10
  # 预测168
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
    --freq h \
    --target 'Flow Duration'
  # 预测336
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
    --freq h \
    --target 'Flow Duration'
  # 预测720
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
    --freq h \
    --target 'Flow Duration'