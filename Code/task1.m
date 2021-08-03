I = imread('C:\Users\Lenovo\Pictures\butterfly.jpg');
figure
imshow(I)
J = imnoise(I,'salt & pepper',0.02); 
figure
imshow(J)
b = imsharpen(J);
figure, imshow(b)
title('Sharpened Image')
H = rgb2gray(J);
figure
imshow(H)
hy = fspecial('sobel');
hx = hy';
Iy = imfilter(double(H), hy, 'replicate');
Ix = imfilter(double(H), hx, 'replicate');
gradmag = sqrt(Ix.^2 + Iy.^2);
figure
imshow(gradmag,[]), title('Gradient magnitude (gradmag)')
X=imadd(I,J)
figure,imshow(X)
Z=imabsdiff(I,J)
figure,imshow(Z)
