function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

POSITIVE_VALUE = 1;
NEGATIVE_VALUE = 0;
EXAM1_INDEX = 1;
EXAM2_INDEX = 2;


plot(X(find(y == POSITIVE_VALUE),EXAM1_INDEX), X(find(y == POSITIVE_VALUE),EXAM2_INDEX), ...
     'g+', 'LineWidth', 2 );
     
plot(X(find(y == NEGATIVE_VALUE),EXAM1_INDEX), X(find(y == NEGATIVE_VALUE),EXAM2_INDEX), ...
    'ro', 'MarkerFaceColor', 'r');
% =========================================================================



hold off;

end


