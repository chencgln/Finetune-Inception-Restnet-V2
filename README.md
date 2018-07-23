# Finetune-Inception-Restnet-V2
An example of fine tuning inception_resnet_v2 using TF-slim

## Prerequisite

This project is built and tested with tensorflow 1.8.


please make sure the following items are ready on your machine.
 
1. TensorFlow
2. TF-slim: make sure path is added to $PYTHONPATH
3. Run scripts under under TensorFlow env


## Scripts 

This Repository provide scripts to quickly run training and evaluation. You can also change parameters in those scripts or write your own script, to train on other datasets or models. 

The model is trained under GPU mode by default. You can use CPU mode by setting the FLAG ```--clone_on_cpu=True``` for python script: ***train_image_classifier.py***.

Run these script in the root path of this project.

#### prepare_dataset&ckpt.sh:
Download the [flowers dataset](http://download.tensorflow.org/example_images/flower_photos.tgz) and checkpoint file [inception_resnet_v2_2016_08_30.tar.gz](http://download.tensorflow.org/models/inception_resnet_v2_2016_08_30.tar.gz)

#### train_inception_resnet_v2_classifier.sh:
Feed in the flowers dataset and train the pre-trained inception_resnet_v2. The checkpoint file will be saved in to ***train/flowers/inception_resnet_v2*** by default.

#### evaluate_classifier.sh:
Evaluate the performance of the trained model.

#### predict_single_image.sh:
Feed in a single image in to the model and get the prediction results.

