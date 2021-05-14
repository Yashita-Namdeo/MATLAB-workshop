NoseDetector = vision.CascadeObjectDetector('Nose'); % Default: finds faces
I = imread('women_face.jpg');
bboxesnose = step(NoseDetector, I); % Detect nose

% Annotate detected nose
INose = insertObjectAnnotation(I, 'rectangle', bboxesnose, 'NOSE');
figure, 
imshow(INose), title('Detected Nose');