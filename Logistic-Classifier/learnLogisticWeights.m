function [output] = learnLogisticWeights(w0,x,y,numLoops)
  for k = 1:numLoops
    for i = 1:length(x)
      prob = sigmoidLikelihood(x(i,1:5), w0, y(i));
      for j = 1:length(x(i,:))
        w0(j) = w0(j) + .01*x(i,j)*(y(i)-prob)
      end
    end
  end
  output = w0
end
