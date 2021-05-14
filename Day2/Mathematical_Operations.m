clc; %clear screen
clear; %variable clear

%add
I = imread('rice.png'); 
Iplus50 = imadd(I,50);
subplot(1,2,1);
imshow(I); %original image
subplot(1,2,2);
imshow(Iplus50) %image with adding 50 to every pixel of the image

%subtract
I = imread('rice.png'); 
Isub50 = imsubtract(I,50);
subplot(1,2,1);
imshow(I); %original image
subplot(1,2,2);
imshow(Isub50) %image with adding 50 to every pixel of the image

%complement
I = imread('glass.png');
J = imcomplement(I);
subplot(1,2,1);
imshow(I); %original image
subplot(1,2,2);
imshow(J) %complement image

%adding two images
I = imread('rice.png');
I1 = imread('cameraman.tif');
Iplus = imadd(I,I1);
subplot(1,3,1);
imshow(I); %original image I
subplot(1,3,2);
imshow(I1); %original image I1
subplot(1,3,3);
imshow(Iplus); %added two images

%multiply
I = imread('moon.tif');
J = immultiply(I,0.5);
subplot(1,2,1);
imshow(I); %original image
subplot(1,2,2);
imshow(J); %multiplied image