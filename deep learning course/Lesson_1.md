# Lesson 1: Image Classification
## Before start of lesson:

If using windows, visit this [thread first](https://forums.fast.ai/t/howto-installation-on-windows/10439) and follow the instructions.

In the future, can simply run:
`activate fastai`
`deactivate`


### Definitions
**Top Down approach**: Learn how it works before you learn why it works
**Epoch**: a cycle that goes through all our data
**resnet34**: a 34 layer residual network
**resnet50**: a 50 layer residual network


## Setting Up
- Download the data from Google Images or online Open Dataset
- Use multi GPUs in parallel


## Looking at the Data
- Check the possible labels
- Normalize the data


## transfer learning
Take a pre-trained model and transfer its learned attributes to fit your project.
- Help have less categories to classify images into
- Faster speed
- Can have smaller size dataset

## Convolutional Neural Network (CNN)
Build a model s.t.
Input: Images
Output: Predicted probability for each probability

- Convolutional neural network backbone
- Fully connected head
- Single hidden layer as a classifier
- 4 Epochs

## Analyze the Prediction
- Check which categories are most often confused by the model
- Check how skewed the data through the confusion matrix:
	- Does the model makes the same mistakes over and over again?
	- Does it rarely confuse the other categories?
If good so far, *unfreeze* the model and train on more data.
- Graph the learning rate vs. the loss/error
- Visualize the layers

## Example Applications of ML
- Generative adversarial models to generate art/painting
- Style transfer to combine various pictures together
- Tensorflow for Fraud detection