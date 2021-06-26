I = imread('C:\Users\Lenovo\Pictures\butterfly.jpg');
I = rgb2gray(I);
J = dct2(I);
figure
imshow(log(abs(J)),[])
colormap(gca,jet(512))
colorbar
J(abs(J) < 10) = 0;
K = idct2(J);
figure
imshowpair(I,K,'montage')
title('Original Grayscale Image (Left) and Processed Image (Right)');
