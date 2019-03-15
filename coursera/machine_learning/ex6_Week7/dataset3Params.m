function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

possible_C = [0.01 0.03 0.1 0.3 1 3 10 30];

error = realmax();
for i=1:length(possible_C)
	for j=1:length(possible_C)
		C = possible_C(i);
		sigma = possible_C(j);

		model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1,x2,sigma));
		predictions = svmPredict(model,Xval);
		all_errors(i,j) = mean(double(predictions~=yval));
  end
end

new_error = min(min(all_errors));
[i j] = find(all_errors == new_error);
error = new_error;
C = possible_C(i);
sigma = possible_C(j);


% =========================================================================

end
