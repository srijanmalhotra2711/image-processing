m=imread('C:\Users\Lenovo\Pictures\tiger.jpg');
figure
imshow(m);
title('Original Image');
m=rgb2gray(m);
figure
imshow(m);
title('Gray Image');
f=fft2(m);
s=abs(f);
figure
imshow(s,[]);
title('Fourier Transform of an Image');
fsh=fftshift(f);
figure
imshow(abs(fsh),[]);
title('Centered Fourier Transform of Image');
s2=log(1+abs(fsh));
figure
imshow(s2,[]);
title('Log Transformation of Image');
f=ifftshift(fsh);
k=ifft2(f);
figure
imshow(k,[]);
title('Reconstructed Image');
