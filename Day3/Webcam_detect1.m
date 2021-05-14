clc;
clear;

camObj = webcam(1); %loads camera
while(1) %infinite loop

img = snapshot(camObj); %take snapshot of camera image
imshow(img);

faceDetector = vision.CascadeObjectDetector('FrontalFaceCART'); % it loads this
bboxes = step(faceDetector, img);

    if isempty(bboxes)
        clc;
        disp('Human Face not detected');
    else
        clc;
        disp('Human Face detected');
        IFaces = insertObjectAnnotation(img, 'rectangle', bboxes, 'FACE');
        imshow(IFaces), title('Detected Face');
    end 
end