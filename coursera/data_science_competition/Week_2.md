# Week 2: Data Exploration

## Clean Data
- Duplicates
- Constants
- Null/Nan
- 0/""
- Outliers (negative values, extremes)
--> Can try shuffling the data after

## Explore Data
- Exploratory Data Analysis (EDA)
- To better understand the data
- Visualization <-> Idea
- Anonymous Data
	- Explore with a baseline
	- Sort values and count --> Understand its distribution
	- Metrics

## Visualization
- Explore individual features
	- Histograms
	- Plots (index vs. value)
	- Statistics
- Explore feature relations
	- Pairs
		- Scatter Plot
		- Correlation plots
	- Couples
		- Plot (index vs. feature statistics)
		- Corrplot + Clustering
- Functions to call
	- Describe
	- Mean
	- Variance
	- Count (values, is Nan)

### Visualization tools
- Seaborn
- Plotly
- Bokeh
- ggplot
- Graph visualization with NetworkX

## Example
- Springleaf Kaggle competition
- Numerai Kaggle competition

## Validation
- Train, Validate, Test
- Overfitting vs. Underfitting
- Type
	- Holdout (1 group)
	- K-fold (k groups)
	- LOO: Leave-one-out (len of train set many groups)
- Stratification
	- Preserve the target distribution over different folds
	- Usage:
		- Small dataset
		- Unbalanced dataset
		- Multiclass dataset

## Split
- Best: Set up your validation to mimic the train/test split of the competition
- Previous and next target values (one train, one valid, etc.)
- Time-based trend (all of train, then validation)

###Different splits causes:
1. Different generated features
2. Different way the model relay on the feature
3. Target leak

### Splitting methods
- Random, rowwise
- Timewise
- By id
- Combine above

### Problems to pay attention to
- At Validation stage
	- different scores and optimal parameters
	- too little data
	- too diverse and inconsistent data
- At Submission stage
	- May already have quite different scores in Kfold
	- Too little data in public leaderboard
	- Randomness
	- Train and test data are from different distributions

### Solutions to the problems
- Average the scores from different k-fold
- Tune model on one split, evaluate score on the other
- LB Shuffle data
- Check for different distributions

## Data Leakage
- Leaks in Time Series: not everyone has information about past, and nobody has information about future
- Unexpected data: meta data, row order, information in the IDs
- LeaderBoard (LB) Probing
- Pairwise cases
- Example: Expedia