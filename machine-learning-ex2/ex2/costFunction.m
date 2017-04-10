function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

trans_theta = (X * theta);
h_theta = sigmoid(trans_theta);
sum = 0;
for iter = 1:m
sum += ((-y(iter) * log(h_theta(iter))) - ((1 - y(iter)) * log(1 - h_theta(iter))));
end

%using matrix functions
sum = ((transpose((-y)) * log(h_theta)) - (transpose(1 - y) * log(1 - h_theta)));
J = sum / m;
grad_sum = zeros(size(theta));

for num_theta = 1:length(theta)
    grad_sum(num_theta) = (h_theta - y)' * X(:, num_theta);
end

grad = grad_sum/m;

%J = sum / m;

%j = length(theta);
%grad_sum = zeros(size(theta));
%for num_theta = 1:j
%    sum = 0;
%    for iter = 1:m
%        sum += ((h_theta(iter) - y(iter)) * X(iter,num_theta));
%    end
%    grad_sum(num_theta) = sum;
%end

%grad = grad_sum/m;


% =============================================================

end
