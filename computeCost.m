function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression

m = length(y); % number of training examples

J = 0;


h_x = X*theta;    %compute h_theta(x) = theta^T * x
J = sum((h_x - y) .^ 2)/2/m;   

end