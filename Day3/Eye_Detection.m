EyeDetector = vision.CascadeObjectDetector('EyePairSmall'); % Default: finds faces
I = imread('women_face.jpg');
bboxeseye = step(EyeDetector, I); % Detect eye

% Annotate detected eye
IEye = insertObjectAnnotation(I, 'rectangle', bboxeseye, 'EYE');
figure, 
imshow(IEye), title('Detected eye');