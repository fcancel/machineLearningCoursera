function biasedMatrix = getBiased(matrixToBiase)
  biasedMatrix = [ones(rows(matrixToBiase),1) matrixToBiase];
end