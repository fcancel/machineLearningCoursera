function biasedMatrix = addBiasColumn(inputMatrix)
  biasedMatrix = [ones(rows(inputMatrix),1) inputMatrix];
end