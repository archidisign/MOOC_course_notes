# Lesson 6: Regularization and Convolutions

## Definitions
**Class Activation Map**: heat-map that shows which parts of an image were most important in making a prediction.
**Convolutions**: variant of matrix multiplication with tied weights. They are the operation at the heart of modern computer vision.
**dropout**: Type of regularization. At random, we throw away some percentage of the activations not the weights, not the parameters. Remember, there's only two types of number in a neural net - parameters also called weights (kind of) and activations. So we're going to throw away some activations.

## Dataset
- Rossmann from Kaggle
- If you have datetime data, consider standardizing everything to not cause confusion (e.g. epoch seconds)

## Avoid Overfitting
- Dropout: remove activations at random during training in order to regularize the model
- Data augmentation: modify model inputs during training in order to effectively increase data size
- Batch normalization: adjust the parameterization of a model in order to make the loss surface smoother.

## Time variables to consider
- Running averages
- Time until next event
- Time since last event

## Metrics
- root mean squared percent error: normal root mean squared error except we go actual minus prediction divided by actual, so in other words it's the "percent" error that we're taking the root mean squared of

## Visualization
- Can use heatmap on augmented images
- Platform.ai to visualize unlabelled data

_Note_: This class covered pandas dataframe manipulation and discussion about Data Ethics