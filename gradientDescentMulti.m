function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    theta = theta - alpha/m*(X' * (X*theta - y));   
    J_history(iter) = computeCostMulti(X, y, theta);

end

end