function gradient = linearRegressionRegularizedGradient(xMatrix, yVector, theta, lambda)

  unregularizedGradient = linearRegressionUnregularizedGradient(xMatrix, yVector, theta);
  
  regularizedTheta = theta;
  regularizedTheta(1) = 0;
  
  regularizationGradient = (lambda/length(yVector)) * regularizedTheta;
  
  gradient = unregularizedGradient + regularizationGradient;
end