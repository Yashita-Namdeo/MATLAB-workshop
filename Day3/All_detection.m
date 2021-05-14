clc;
clear;
close all;
faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
eyeDetector = vision.CascadeObjectDetector('EyePairBig');
noseDetector = vision.CascadeObjectDetector('Nose');
mouthDetector = vision.CascadeObjectDetector('Mouth');

I = imread('women_face.jpg');

facebboxes = step(faceDetector, I);
eyebboxes = step(eyeDetector, I);
nosebboxes = step(noseDetector, I);
mouthbboxes = step(mouthDetector, I);

IFaces = insertObjectAnnotation(I, 'rectangle', facebboxes, 'Face');
IFaces = insertObjectAnnotation(IFaces, 'rectangle', eyebboxes, 'Eye');
IFaces = insertObjectAnnotation(IFaces, 'rectangle', nosebboxes, 'Nose');
IFaces = insertObjectAnnotation(IFaces, 'rectangle', mouthbboxes, 'Mouth');

figure, imshow(IFaces), title('Detected Parts');
