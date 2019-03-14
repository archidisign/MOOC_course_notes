# Lesson 3: Multi-label prediction

## Definitions
**accuracy_thresh**: selects the ones that are above a certain threshold (0.5 by default) and compares them to the ground truth.
**hidden state**: contains information about the sentence up to that point.
**encoder**: the part that's responsible for creating and updating the hidden state

## Dataset
- Planet Amazon dataset from Kaggle
- CamVid dataset
- IMDB dataset
- BIWI head pose dataset
	- Can create your dataset from existing one: Code [here](https://nbviewer.jupyter.org/github/fastai/course-v3/blob/master/nbs/dl1/lesson3-head-pose.ipynb)

## Multi-Classification
- An image may have multiple labels (e.g. picture of a room with tag: table, bed, lamp)
- Do segmentation on the image
	- Code [here](https://nbviewer.jupyter.org/github/fastai/course-v3/blob/master/nbs/dl1/lesson3-camvid.ipynb)
	- Use U-Net

### U-Net
- Starts with a big image
- Gradually makes it smaller and smaller until eventually you just have one prediction.
- U-Net makes it bigger and bigger and bigger again
- Takes every stage of the downward path and copies it across, and it creates this U shape.

## Natural Language Processing
### Tokenization
Tokenize the text by paying careful attention to:
- Punctuation
- Contractions of words together (e.g. isn't and don't)
- Clean part of the code (HTML stripping)

### Numericalization
- Convert to integers by creating a list of all the words used
- Only keep the ones that appear at least twice with a maximum vocabulary size of 60,000 (by default)
- Replace the ones that don't make the cut by the unknown token UNK.

### Modeling
- Careful to decrease batchsize as we have a large vocabulary dataset
- Have an `unsup` folder to save the unlabelled data
- Recurrent structure and hidden state that is updated each time it sees a new word
- Shuffle the texts at each epoch before concatenating them all together
	- Shuffle only for training and not validation
- Send batches that read text in order with targets that are the next word in the sequence
- Load model with the pretrained weights