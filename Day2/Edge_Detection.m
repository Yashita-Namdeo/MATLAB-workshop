%edge detection works only on gray scale image
clc;
clear;close all;

a=imread('rose.jpg');
a=rgb2gray(a);

%different methods for edge detection
b=edge(a,'canny');
c=edge(a,'sobel');
d=edge(a,'prewitt');
figure;
subplot(2,2,1);imshow(a);
subplot(2,2,2);imshow(b);title('canny');
subplot(2,2,3);imshow(b);title('sobel');
subplot(2,2,4);imshow(b);title('prewitt');