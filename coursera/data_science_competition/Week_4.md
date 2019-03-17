# Week 4: Hyperparameter Optimization

## Hyperparameter Tuning
1. Choose most influential parameters
- Sort all parameters by: importance, feasibility, understanding
2. Understand how they influence the model
3. Tuning
- Manually
	- Change and examine
- Automatically
	- Hyperopt

## Some libraries
Hyperopt, Scikit-optimize, Spearmint, GPyOpt, RoBO, SMAC3

## Models
- Tree-based models
	- GBDT: XGBoost, LightGB, CatBoost
	- RandomForest, ExtraTrees: scikit-learn
	- Others: RGF
- Neural Networks
	- Keras, Lasagne
	- TensorFlow
	- MxNet
	- PyTorch
	- sklearn's MLP
- Linear models

## Advanced features
Calculating various statistics of one feature grouped by another and features derived from neighborhood analysis of a given point.
- Statistics and Distance based features
- Matrix factorization for feature extraction
- Feature interaction
- tSNE: method for visualizing data integrating features
	- Often for multi-task models, many-fold learning
- Ensembling
	- Bagging
	- Boosting
	- Stacking
	- StackNet

## Catmost
- Gradient Boosting algorithm developed at Yandex