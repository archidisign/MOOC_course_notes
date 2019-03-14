# Lesson 2: SGD from scratch

## Definitions:
**model**: the machine learning algorithm to do prediction such as linear regression
**evaluation criteria**: the loss function such as mean squared error
**optimization**: best way to find the unknown value

## Linear Regression
- Goal: To fit a line to a set of points.
- Find parameters (weights) such that you minimize the error between the points and the line.  
- Most commone error function: mean squared error

## Stochastic Gradient Descent (SGD)
- Optimization Method
- Often used in Neural Networks
- Goal: minimize functions
- Input: Function defined by a set of parameters
- Model: Optimize on an initial set of parameter values
	- Iteratively move toward a set of parameter values that minimize the function
	- Iteratively taking steps in the negative direction of the function gradient

## Loss Functions
### Cross-Entropy Loss or Log Likelihood Loss
Penalizes incorrect confident predictions and correct unconfident predictions