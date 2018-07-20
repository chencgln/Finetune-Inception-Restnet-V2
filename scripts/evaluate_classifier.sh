CHECKPOINT_DIR="train/flowers/inception_resnet_v2/"
DATASET_DIR="dataset/flowers"

python eval_image_classifier.py \
    --alsologtostderr \
    --checkpoint_path=${CHECKPOINT_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=flowers \
    --dataset_split_name=validation \
    --model_name=inception_resnet_v2 \
    --batch_size=20