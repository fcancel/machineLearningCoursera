function regularizedCost = regularizedCostNeuralNetwork(Theta1, Theta2, lambda, rowsOfData)
  % This function, given the two thetas calculates it's regularized cost
  
  % We should not regularize the bias
  Theta1(:,1) = 0;
  Theta2(:,1) = 0;
  
  regularizedCost = (lambda/(2*rowsOfData)) * (sum(sum(Theta1.^2)) + sum(sum(Theta2.^2)));
end