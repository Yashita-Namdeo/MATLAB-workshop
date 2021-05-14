%available only in 2019 onwards MATLAB version.
a=imread('rose.jpg');
[r,g,b]=imsplit(a);
figure;
imshow(r);

%read the red component of the image
r(:,:,1)=r; % : means all rows and all columns
r(:,:,2)=0;
r(:,:,3)=0;
figure;
imshow(r);

%read the green component of the image
gr(:,:,2)=g;
gr(:,:,1)=0;
gr(:,:,3)=0;
figure;
imshow(gr);

%read the blue component of the image
bl(:,:,3)=b;
bl(:,:,2)=0;
bl(:,:,1)=0;
figure;
imshow(bl);