clc;
clear;
faceDetector = vision.CascadeObjectDetector; %Default: find faces
I = imread('visionteam.jpg');
bboxes = step(faceDetector, I); %Detect faces

%Annotate detected faces
IFaces = insertObjectAnnotation(I,'rectangle',bboxes,'Face');
figure, imshow(IFaces), title('Detected faces');