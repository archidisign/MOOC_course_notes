# Lesson 14: Image Segmentation with U-Net

## Definitions
**Pixel loss**: loss in the qaulity of the image/resolution
**Perceptual loss**:  find the block index just before we get a maxpool

## Dataset
- ImageNet
- VGG16 model
- Caravana Kaggle dataset

## Types of image-to-image translation:
- to invent “labels” (your dependent variables)
1. Deskewing: Either recognize things that have been rotated by 90 degrees or better still that have been rotated by 5 degrees and straighten them.
2. Colorization: Make a bunch of images into black-and-white and learn to put the color back again.
3. Noise-reduction: Maybe do a really low quality JPEG save, and learn to put it back to how it should have been.
4. Maybe taking something that’s in a 16 color palette and put it back to a higher color palette.

## Super Resolution
- Technique to restore high resolution detail in images (using CNN)
- Perceptual Losses for Real-Time Style Transfer and Super-Resolution
- Progressie resizing: go all the way back to the top and change to 4 scale, 32 batch size, restart

## Image Segmentation with U-net
- Precisely classify every part of an image
- U-net:
	- Invented for Biomedical Image Segmentation
	- Best image segmentation approach
	- "On the left is the downward path where we start at 572x572 in this case then halve the grid size 4 times, then on the right is the upward path where we double the grid size 4 times. But the thing that we also do is, at every point where we halve the grid size, we actually copy those activations over to the upward path and concatenate them together."
	- Use bounding box