%subpolot is used to display multiple image in single figure window
%first value - row
%second value - column
%third value - index

%RGB
a = imread('rose.jpg');
subplot(2,2,1); 
imshow(a);

a1 = imresize(a,[256,256]); %change size of the image
subplot(2,2,2); 
imshow(a1);

%CONVERT GRAY SCALE
b = rgb2gray(a);
subplot(2,2,3);
imshow(b);

%CONVERT BINARY
c = im2bw(b);
subplot(2,2,4);
imshow(c);
impixelinfo;
