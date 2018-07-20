#! /bin/bash

DATASET_DIR="dataset/flowers"
TRAIN_DIR="train/flowers/inception_resnet_v2"
CHECKPOINT_PATH="checkpoints/inception_resnet_v2_2016_08_30.ckpt"

python train_image_classifier.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=flowers \
    --dataset_split_name=train \
    --model_name=inception_resnet_v2 \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --batch_size=20 \
    --checkpoint_exclude_scopes=InceptionResnetV2/Logits,InceptionResnetV2/AuxLogits \
    --trainable_scopes=InceptionResnetV2/Logits,InceptionResnetV2/AuxLogits