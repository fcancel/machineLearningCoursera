function outputMatrix = nnProcessInputOutput(inputMatrix, thetaMatrix)
  inputMatrix = addBiasColumn(inputMatrix);
  
  z = thetaMatrix * inputMatrix';
  a = sigmoid(z);
  
  outputMatrix = a';
end