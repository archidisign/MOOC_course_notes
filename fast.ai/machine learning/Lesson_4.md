# Lesson 4: Feature Importance and Tree Interpreter

## Importance Plot
- metrics
	- RMSE of training
	- RMSE of validation
	- R^2 of training
	- R^2 of validation
	- R^2 of OOB
- retrieve information
- prune feature space
- "dendrogram" to understand feature relationships
- Cluster Analysis
	- look at objects (rows or columns)
	- find which ones are similar to each other

### Example: Random Forest's Hyperparameters
- set_rf_samples
- min_samples_leaf
- max_features
- others: n_jobs, oob_score

### Others
- Linear Regression
- Logistic Regression

## Partial Dependence Plot
For the features that are important, how do they relate to the dependent variable.
- Plot 2 features against each other
	- ggplot
	- smoother: linear regression for every little subset of the graph

## Tree Interpreter
- Take a particular row
- Go to predict and pass my random forest + row
- Output:
	- prediction: The prediction from the random forest
	- bias: The average sale price across the whole original dataset
	- contributions: A column and the value to split by (i.e. the predictor), and how much it changed the predicted value.

### Example
You are an insurance company and somebody rings up and you give them a quote and they say “oh, that’s $500 more than last year. Why?”
-> To explain model's prediction

### Example Explatnation
- The start price and the added changes
- The enclusre
- The model ID
-> Break down a tree to find explanation