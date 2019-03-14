# Lesson 13: Image Enhancement

## Dataset
- TrainingPhase API
	- Example using SGDR
	- Discriminative learning rates + 1cycle

## CycleGAN
- Generate images even when we don't have direct/paired training data

## Style Transfer
- Change the images in whatever style we like
- Pixel Optimization (and not weights)
- Deep Painterly Harmonization 
- Extract the loss in the images and do style matching

Losses:
1. Content Loss: Returns a value that’s lower if it looks more like the bird (not just any bird, the specific bird that we have coming in).
2. Style Loss: Returns a lower number if the image is more like V.G.’s style

### Forward Hook
- Create a class
- Have a hook function: receive the module that you have hooked, input for the forward pass and the output
- Store the output in an attribute

## Optimization Problems
- Broyden–Fletcher–Goldfarb–Shanno (BFGS)
- **Gradient**: how fast the function change
- **The second derivative**: how fast the gradient change
- Optimizing your input directly and using activations as part of a loss function 

_Note_: This class covers a discussion about data ethics