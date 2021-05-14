clear;
close all;
clc;

a = imread('coins.png');
imhist(a);
figure;
imshow(a);
b = a>100;
figure;
imshow(b);
b = medfilt2(b,[5 5]);
b = uint8(b);
Inewc = a.*b;
imshow(Inewc);
title('segmented coins');