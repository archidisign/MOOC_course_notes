function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%  compute h(x)
h = sigmoid(X*theta);
n = length(theta);

% find cost J
old_J = 1/m.*sum(-y'*log(h)-(1-y)'*log(1-h));
new_lambda = lambda/(2*m)*sum([theta(2:n)].^2);
J = old_J + new_lambda;

% find gradient grad
grad(1) = 1/m.*(sum(X'(1,:)*h-X'(1,:)*y));
for i=2:n
  grad(i) = 1/m.*sum(X'(i,:)*h-X'(i,:)*y)+lambda/m.*theta(i, 1);
end



% =============================================================

end
