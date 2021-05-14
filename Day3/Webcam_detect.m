clc;
clear;

% Construct a webcam object
camObj = webcam(1);

% Preview a stream of image frames
preview(camObj);

%Acquire and display a single image frame
img = snapshot(camObj);
imshow(img);

faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
bboxes = step(faceDetector, img);

IFaces = insertObjectAnnotation(img, 'rectangle', bboxes, 'FACE');
figure, imshow(IFaces), title('Detected Face');