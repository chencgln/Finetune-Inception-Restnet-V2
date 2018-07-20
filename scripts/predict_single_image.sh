CKPT_DIR="train/flowers/inception_resnet_v2/"
TEST_IMG="test_image.jpg"

python predict_single_image.py \
    --checkpoint_path=$CKPT_DIR \
    --test_path=$TEST_IMG \
    --model_name=inception_resnet_v2