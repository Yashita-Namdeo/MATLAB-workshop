clc;
clear;
close all;
camObj = webcam(1);
% Preview a stream of image frames.
preview(camObj);
facedetector=vision.CascadeObjectDetector;
while(1)
    % Acquire and display a single image frame.
    img = snapshot(camObj);
    FaceBox =step(facedetector,img);
    if isempty(FaceBox)
    disp('No Face is detected');
    else
    IFaces = insertObjectAnnotation(img, 'rectangle', FaceBox, 'Face');
    imshow(IFaces);
    disp('Face is detected');
    caUserInput = 'Human Detected';
    NET.addAssembly('System.Speech');
    obj = System.Speech.Synthesis.SpeechSynthesizer;
    Speak(obj, caUserInput);;
    end
end