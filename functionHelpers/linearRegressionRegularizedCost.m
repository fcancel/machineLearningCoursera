function cost = linearRegressionRegularizedCost(Xmatrix, yVector, theta, lambda)

  unregularizedCost = linearRegressionUnregularizedCost(Xmatrix, yVector, theta);
  
  regularizationTheta = theta;
  regularizationTheta(1) = 0;
  
  regularizationCost = sum((regularizationTheta .^2)) * lambda/(2*length(yVector));
  
  cost = unregularizedCost + regularizationCost;
end