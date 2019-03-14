# Lesson 11: Neural Translation

## Dataset
- ImageNet Localization Challenge
- French/English Training Data

## Translate languages
- Add attention to LSTM = BiLSTMs(+Attn)
- Build a sequence to sequence (seq2seq) model
- The 1cycle Policy

### The 4 Big wins of Neural Machine Translation
1. End-to-end training
2. Distributed representations share strength
3. Better exploitation of context
4. More fluent text generation

## seq2seq
- Language translation (Englisth to French)
- Both the input and output are sequences (can have different lengths)
- Attention mechanism: which words to focus on at each step
- Encoder is like the backbone

## Review of RNNs
- Predict 2 to n chars using 1 to n-1 chars by stacked RNNs
- Unrolled stacked RNNs for sequences

### Improvements
1. Teacher forcing
2. Bidirectional models
3. Attention models

## DeVISE
- Bridge the divide between text and images