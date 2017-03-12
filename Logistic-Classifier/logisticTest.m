function [output] = logisticTest(x,w,y)
  numCorrect = 0;
  total = 0;
  classLabels = logisticClassify(x,w)
  for i = 1:length(y)
            if y(i) == classLabels(i)
              numCorrect = numCorrect+1;
            end
            total = total+1;
  end
  output = numCorrect/total;
end

%{
  For 1 loop: Accuracy = .94

  For 4 loops: Accuracy = 1
  For 5 loops: Accuracy = 1
  For 6 loops: Accuracy = 1

  For 20 loops: Accuracy = .84 (Overfitting)
%}
