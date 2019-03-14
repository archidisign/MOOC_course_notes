# Lesson 7: Resnets, U-net and Generative adversarial networks (GAN)

## Definitions
**skip connection**: 
	- Use case: Resnets, image classification, U-net
**super-resolution model**: model to increase the resolution of a low-quality image

## Dataset
- MNIST
- Improve image resolution tutorial [here](https://nbviewer.jupyter.org/github/fastai/course-v3/blob/master/nbs/dl1/lesson7-superres-imagenet.ipynb) and [here](https://nbviewer.jupyter.org/github/fastai/course-v3/blob/master/nbs/dl1/lesson7-superres.ipynb)
- LSun bedroom data

## Models
- CNN with loss function comparison: code [here](https://nbviewer.jupyter.org/github/fastai/course-v3/blob/master/nbs/dl1/lesson7-resnet-mnist.ipynb)
- GAN: code [here](https://nbviewer.jupyter.org/github/fastai/course-v3/blob/master/nbs/dl1/lesson7-superres-gan.ipynb)

## Losses
**feature loss/perceptual loss**:
**gram loss**: (e.g. image colorization)
**generative adversarial loss**: (e.g. for GANs)
	- Improve the quality of generative models in some contexts, at the cost of speed.