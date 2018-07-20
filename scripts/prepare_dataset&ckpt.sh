#! /bin/bash

DATASET_DIR="dataset/flowers"
#mkdir -p $DATASET_DIR

echo -e "\n********** Download and convert dataset **********"
python download_and_convert_data.py \
    --dataset_name="flowers" \
    --dataset_dir=${DATASET_DIR}

echo -e "\n********** Download checkpoint for inception_resnet_v2 **********"
CHECKPOINT_DIR="checkpoints"
mkdir ${CHECKPOINT_DIR}
wget http://download.tensorflow.org/models/inception_resnet_v2_2016_08_30.tar.gz
tar -xvf inception_resnet_v2_2016_08_30.tar.gz
mv inception_resnet_v2_2016_08_30.ckpt ${CHECKPOINT_DIR}
rm inception_resnet_v2_2016_08_30.tar.gz