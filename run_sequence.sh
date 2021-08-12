#!/usr/bin/bash

python run_image_text_classification.py\
 --output_dir vqa_model\
 --data_dir images\
 --train_file train_vqa.tsv\
 --validation_file val_vqa.tsv\
 --save_steps 2000\
 --num_train_epochs 5\
 --eval_steps 1000\
 --logging_steps 1000\
 --save_total_limit 5\
 --per_device_train_batch_size 64\
 --per_device_eval_batch_size 64\
 --warmup_steps 800\
 --pretrained_checkpoint output/ckpt-159999\
 --learning_rate 1e-4



#  --max_train_samples 100\
#  --max_eval_samples 500
#  --weight_decay 0.01\
# --resume_from_checkpoint test-vqa/ckpt-11
# save total limit
# learning_rate
# resume_from_checkpoint
# weight decay?
