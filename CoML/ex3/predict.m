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
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Layer 1
a1 = [ ones( m, 1 ), X ];
% layer1 = size( a1 )

% Layer 2
z2 = (Theta1 * a1')';
% size( z2 )
a2 = [ ones( size( z2, 1 ),1 ), sigmoid( z2 ) ]; % Must add bias node to layer
% layer2 = size( a2 )

% Layer 3
z3 = Theta2 * a2';
% size( z3 )
a3 = sigmoid( z3 );
% layer3 = size( a3 )

[notUsed p] = max(a3);
p

% =========================================================================


end
