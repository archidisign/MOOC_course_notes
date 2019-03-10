# Lesson 9: Multi-object Detection

## Definition
**SSD**: class of model that uses convolutional activiations
**You Only Look Once (YOLO)**: class of model where the output is one big long vector from a fully connected linear layer
**anchor boxes**: division of the image equally to predict multiple bounding boxes
**receptive field**: throughout your convolutional layers, every piece of those tensors has a receptive field which means which part of the input image was responsible for calculating that cell
**focal loss**: scaled cross-entropy loss

## Data Augmentation in Computer Vision
- Continuous data since dependent variable is the coordinates of bounding box
- Augmentation by rotating the bounding boxes

## Needed steps for NN training
1. Data
2. Architecture
3. Loss function

## Interpretation
1. Activation
- Put the activations through tanh (tanh is the same shape as sigmoid except it is scaled to be between -1 and 1) which forces it to be within that range.
- Move the actual position of the anchor boxes according to the value of the activations divided by two (actn_bbs[:,:2]/2).
- Each predicted bounding box can be moved by up to 50% of a grid size from where its default position is. Same for its height and width.

2. Entropy
- First we take the one hot embedding of the target (at this stage, we do have the idea of background)
- Then we remove the background column (the last one) which results in a vector either of all zeros or one one.
- Finally, use Binary Cross-Entropy for multi-label classification

## SSD Loss Function
1. Get rid of the padding
2. Turn the activations to bounding boxes
3. Do the Jaccard
4. Do map_to_ground_truth
5. Check that there is an overlap greater than something around 0.4~0.5 (different papers use different values for this)
6. Find the indices of things that matched
7. Assign background class for the ones that did not match
8. Then finally get L1 loss for the localization, binary cross entropy loss for the classification, and return them which gets added in ssd_loss

## History of Object Detection
- Scalable Object Detection using Deep Neural Networks (Multibox)
- Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks
- YOLO: Unified, Real-Time Object Detection
- SSD: Single Shot MultiBox Detector
- Focal Loss for Dense Object Detection (RetinaNet)

## Non Maximum Suppression
- Go through every pair of these bounding boxes and if they overlap by more than some amount, say 0.5, use Jaccard and they are both predicting the same class
- We assume they are the same class and we are going to pick the one with higher p-value.
