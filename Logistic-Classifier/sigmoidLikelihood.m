function [output] = sigmoidLikelihood(x,w,y)
  sum = 0;
% Dot product x and w  wTx
  for i = 1:length(x)
    sum = sum + (x(i)*w(i));
  end

  % g(wTx)->psuedo probability

  if y==1
    output = 1/(1+(exp(-sum)));
  elseif y==0
    output = 1-(1/(1+exp(-sum)));
  end

end

