function gradient = linearRegressionUnregularizedGradient(xMatrix, yVector, theta)
    gradient = (xMatrix' * (xMatrix * theta - yVector) )/length(yVector);
end