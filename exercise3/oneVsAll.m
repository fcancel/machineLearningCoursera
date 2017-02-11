function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the following code to train num_labels
%               logistic regression classifiers with regularization
%               parameter lambda. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell you
%       whether the ground truth is true/false for this class.
%
% Note: For this assignment, we recommend using fmincg to optimize the cost
%       function. It is okay to use a for-loop (for c = 1:num_labels) to
%       loop over the different classes.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.
%
% Example Code for fmincg:
%
%     % Set Initial theta
%     initial_theta = zeros(n + 1, 1);
%     
%     % Set options for fminunc
%     options = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
%     [theta] = ...
%         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
%                 initial_theta, options);
%

% What this function will do is the following:
% This is going to get the one vs all, but not for only one type
% we are doing this for all of them, in particular for num_labels
% note that fmincg will only do ONE row of data, and I will need
% num_labels rows of data

initial_theta = zeros(n + 1, 1);
options = optimset('GradObj', 'on', 'MaxIter', 50);

for desiredNumLabel = 1 : num_labels
  [minimalCostTheta] = fmincg(@(t)(lrCostFunction(t, X, (y == desiredNumLabel), lambda)), initial_theta, options);
  all_theta(desiredNumLabel, :) = minimalCostTheta;
end

% Note that all_theta will have rows that will let us know, from which values
% we are dealing correctly or incorrectly.
% example, we have a "predictThis" is a 1xcolumns(X) image, and want to know if it is a 1,2,...,10
% we use the all_theta row one to calculate how probable is it to be a 1
% the same with row 2 for being a 2, etc
% then, we see which one is the one most probable, and say that "predictThis"
% is whichever value is most probable, for example, a 5


% =========================================================================


end
