# Lesson 5: Extrapolation and Random Forest

## Tree Interpreter
- Waterfall Charts
- Returns:
	- prediction: the same as the random forest prediction
	- bias: this is going to be always the same — it’s the average sale price for everybody for each of the random samples in the tree
	- contributions: the total of all the contributions for each time we see that specific column appear in a tree.

## Extrapolation
- Weak point of random forests: can't predict values outside their input range
- Big difference between validation and training score

## Cross-validation
1. Randomly shuffle the data.
2. Split it into five groups
3. For model №1, we will call the first one the validation set, and the bottom four the training set.
4. We will train and we will check against the validation and we get some RMSE, R², etc.
5. We will repeat that five times, and we will take the average of RMSE, R², etc, and that is a cross-validation average accuracy.