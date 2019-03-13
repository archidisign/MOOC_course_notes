# Lesson 12: Generative Adversial Networks (GANS)

## Defintions
**seed**: train a language model on some corpus and then you are going to generate some text from that language model
**residual block**:level in this unit hierarchy for ResNet

## Dataset
- CIFAR10
	-  Transformations: random horizontal flip and then we add 4 pixels (size divided by 8) of padding on each side

## DarkNet
- architecture used in YOLOv3

## Generative Adversarial Networks (GANs)
- A type of loss function
- A generator and a discriminator battle out
- Combine to create a generative model that can create highly realistic outputs
- Wasserstein GAN variant
	- Easy to train and more resilient to a range of hyperparameters
- Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks
Others:
- Generator
- Deconvolution and ConvTransposed2d
- Cycle GAN
- Adversial Loss

### Use cases
- Turn drawing into rendered pictures

## CNN Sequence
1. conv
2. batch norm
3. nonlinear activation (e.g. ReLU)
	- Leaky ReLU
Others:
- Residual Blocks
- Adaptive average pooling
- Sequentials

Visualization: DAWNBench

