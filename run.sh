#!/usr/bin/bash

python run_image_text_mlm.py \
 --output_dir output\
 --data_dir images \
 --train_file train_vqa_final.tsv\
 --validation_file val_vqa_final.tsv\
 --save_steps 5000 \
 --num_train_epochs 6\
 --eval_steps 2500\
 --logging_steps 1000\
 --save_total_limit 5\
 --per_device_train_batch_size 56\
 --per_device_eval_batch_size 56\
 --warmup_steps 500\
 --learning_rate 0.008


#  --weight_decay 0.01\
#  --max_train_samples 5000\
#  --max_eval_samples 500\
# --resume_from_checkpoint test-vqa/ckpt-11
# save total limit
# learning_rate
# resume_from_checkpoint
# weight decay?
