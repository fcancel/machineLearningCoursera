function yMatrix = transformValueVectorToMatrix(y, totalLabels)
  % It is expected that y is a Val x 1 vectorize
  % Will output a Val x totalLabels matrix
  
  yMatrix = zeros(rows(y), totalLabels);
  
  for row = 1 : rows(y)
    yMatrix(row, y(row)) = 1;
  end
end