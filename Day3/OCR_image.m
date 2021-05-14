clc;
clear;

businessCard = imread('businessCard.png');
ocrResult = ocr(businessCard);
bboxes = locateText(ocrResults, 'MathWorks', 'IgnoreCase', true);
Iocr = insertShape(businessCard, 'FilledRectangle', bboxes);
figure, imshow(Iocr);
