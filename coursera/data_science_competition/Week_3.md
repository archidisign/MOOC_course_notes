# Week 3: Metrics Optimization

## Metric vs Loss
- Target metric is what we want to optimize
- Optimization loss is what model optimizes

## Loss
- Do a difference between prediction and target to see if predicted correctly

## Metric
- Metric determines optimal decision boundary
- If your model is scored with some metric, you get best results by optimizing exactly that metric
- Regression
	- MSE, RMSE, R-squared
	- MAE
	- (R)MSPE, MAPE
	- (R)MSLE
- Classification
	- Accuracy, Logloss, AUC
		- AUC: Area under ROC curve
	- Cohen's (Quadratic weighted) Kappa

### Optimization for Metric
1. Just run the right metric and model!
2. Preprocessing train and optimize another metric
3. Optimize another metric, postprocess predictions
4. Write custom loss function
5. Optimize another metric, use earlystopper
6. Regularization (L1, L2) to optimize constant
7. Sampling with weights, average
8. Transform target and prediction back, fit model with loss (for Regression)
9. Use correct probabilities (for Classification), caliberate
	- Platt Scaling
	- Isotonic Regression
	- Stacking
10. Compare accuracy for:
	- Zero-one Loss
	- Logistic Loss
	- Hinge Loss
11. Optimize MSE and find best thresholds (for Kappa)
9. etc...

Custom Loss for XGBoost: Define function that computes the 1st and 2nd order derivatives w.r.t prediction (i.e. gradient, hessian)
Early stopping:
- Optimize metric M_1
- Monitor metric M_2
- Stop when M_2 score is the best

## Mean Encoding
- Using target to generate features
- Use case: Generate feature from categorical data from binary classification
- Extension/Generalization: Can be used for different tasks, many-to-many relations, time series, encoding interactions and numerical features

### Regularization
1. Cross-Validation Loop inside training data
2. Smoothing
3. Adding random noise
4. Sorting and Calculating expanding mean