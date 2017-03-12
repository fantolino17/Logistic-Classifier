function [output] = logisticClassify(x,w)

  classLabels = [];
  for i = 1:length(x)
    prod = 0;
    for j = 1:length(x(i,:))
      prod = prod + (x(i,j)*w(j));
    end

    if prod>=0
      classLabels(i) = 1;
    elseif prod<0
      classLabels(i) = 0;
    end
  end
  output = classLabels;
end
