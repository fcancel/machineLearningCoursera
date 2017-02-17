function cost = linearRegressionUnregularizedCost(Xmatrix, yVector, theta)
  cost = sum(((Xmatrix * theta - yVector).^2))/(2 * length(yVector));
end