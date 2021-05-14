clear;

%here salt&pepper is a filter
a = imread('cameraman.tif');
J = imnoise(a,'salt & pepper', 0.22); %0.12 is noise varience
C = medfilt2(J,[5 5]); %nearest 5 members

subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(J);
subplot(1,3,3);imshow(C);


%noise and filtering of colored image
clc;
clear; close all;
a = imread('rose.jpg');
b1 = imnoise(a,'salt & pepper', 0.22);
[r,g,b] = imsplit(b1);

r = medfilt2(r,[5 5]);
g = medfilt2(g,[5 5]);
b = medfilt2(b,[5 5]);
c(:,:,1) = r;
c(:,:,2) = g;
c(:,:,3) = b;

subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(b1);
subplot(1,3,3);imshow(C);
