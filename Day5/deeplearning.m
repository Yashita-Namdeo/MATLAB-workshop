clc;
clear;
imds = imageDatastore('dataset','IncludeSubfolders', true,...
    'LabelSource', 'foldernames'); %read dataset

[traindata, testdata] = splitEachLabel(imds,0.7); %split dataset

layers = [imageInputLayer([128 128 3])
convolution2dLayer(5,20)
reluLayer
maxPooling2dLayer(2,'Stride',2)
fullyConnectedLayer(2)
softmaxLayer
classificationLayer()]; % defined the layers

options = trainingOptions('sgdm', ...
            'LearnRateSchedule', 'piecewise', ...
            'LearnRateDropFactor', 0.2, ...
            'LearnRateDropPeriod', 5, ...
            'MaxEpochs', 20, ...
            'MiniBatchSize', 300); %set the tranining options
        
[net,info] = trainNetwork(traindata, layers, options); %train data 
save net net %save to network

%Accuracy check
[labels,err_test] = classify(net, testdata, 'MiniBatchSize', 300);
confusionchart(testdata.Labels,labels);
figure;
plotconfusion(testdata.Labels,labels)

disp(traindata);



%Testing the CNN
load net.mat
[filename, pathname] = uigetfile('*.*', 'Pick a input image ');
filename=strcat(pathname,filename);
im=imread(filename);
im=imresize(im,[128 128]);
label = char(classify(convnet,im)); % classify with deep learning
figure;
imshow(im);title(label)