clc;
clear;
clear all;

I = imread('barcodeQR.jpg');

%Region of interest containing the barcode
roi = [470, 300, 720, 620];

%Search for QR Code
[msg, ~, loc] = readBarcode(I, roi, 'QR-CODE');

%Annotate the image with the decoded message
xyTest = loc(2,:);
Imsg = insertText(I, xyTest, msg, 'BoxOpacity', 1, 'FontSize', 25);

%Insert filled circles at the finder pattern locations
Imsg = insertShape(Imsg, 'FilledCircle', [loc, ...
    repmat(10, length(loc), 1)], 'color', 'red', 'Opacity', 1);

%Display image
imshow(Imsg);