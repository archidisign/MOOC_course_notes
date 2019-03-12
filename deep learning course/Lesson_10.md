# Lesson 10: NLP and Transfer Learning

## Defintions
**dropout**: regularization term

## Dataset
- IMDB
	- Standardize
	- Tokenize (chunksize=24000)
- Use fast.ai's DataLoader and TextDataset

## NLP Training
- NLP can pretrain on a large subset of wikipedia
	- Wikitext103
- Create own Learner and ModelData
- Transfer learning: make model into backbone + head

## Other models
- Regularizing and Optimizing LSTM Language Models
- Universal Language Model
- MultiBatchRNN/BPT3C

## Metrics
- Accuracy

## Learning Rate
- Differential Learning rates -> Discriminative Learning Rates
- Slanted Triangular Learning Rate

## Advice for Ablation studies
1. VNC on AWS to chunck code together so that they keep running at the same endpoint after a session is disconnected
2. Google Fire to create python scripts (instead of notebooks)
3. IMDB scripts by fast.ai
4. Use `pip install -e` to create a symlink to the fastai library
5. SentencePiece: instead of tokenizing words, tokenize sub-word units