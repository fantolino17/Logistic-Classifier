  trainData =  load('data.mat','-mat', 'trainData');
  trainData = struct2cell(trainData);
  trainData = cell2mat(trainData);
  newCol = ones(50,1)
  trainData = [trainData(:,1:4) newCol trainData(:,5)]
  w = [0 0 0 0 0];

  newW = learnLogisticWeights(w,trainData(:,1:5),trainData(:,6),4);
  newW


      testData = load('data.mat','-mat', 'testData');
      testData = struct2cell(testData);
      testData = cell2mat(testData);
      testData = [testData(:,1:4) newCol testData(:,5)]
      logisticClassify(testData(:,1:5),newW)
      logisticTest(testData(:,1:5),newW,testData(:,6))



