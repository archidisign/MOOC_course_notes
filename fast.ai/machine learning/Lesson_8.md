# Lesson 8: Logistic Regression

## Tools
- PyTorch
- Dataset: MNIST

## Notions to Remember
- Normalize data: subtracting out the mean and divide by the standard deviation
	- To better train the model
- Slicing (into a tensor):  slicing into the first axis with 0, so that means we’re grabbing the first slice
	- Reduce the rank of the tensor by one
	- 3D to 2D
- Loss function:
	- Binary Loss

## Neural Network
- nn.Linear
- nn.Sequential
- nn.LogSoftmax
- argmax