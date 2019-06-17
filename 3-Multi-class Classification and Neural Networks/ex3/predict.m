function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.

a1 = [ones(m, 1), X];


a2 = sigmoid(Theta1 * a1'); 


a2 = [ones(1, size(a2, 2)); a2]; 


a3 = sigmoid(Theta2 * a2);


[val, p] = max(a3', [], 2);
p








% =========================================================================


end
