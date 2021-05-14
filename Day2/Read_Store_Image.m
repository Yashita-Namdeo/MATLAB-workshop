%cameraman image is already there in root folder by default
a = imread('cameraman.tif'); %read image
imshow(a); %show image
whos a;
impixelinfo; %view the pixels of the image(in matrix form)
imwrite(a,'test.png'); %store the image
info = dicominfo('CT-MONO2-16-ankle.dcm'); %medical image
Y = dicomread(info);
figure, imshow(Y,[]);

