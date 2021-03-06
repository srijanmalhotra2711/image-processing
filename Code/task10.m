clc
clear all
close all

i1 = imread('C:\Users\Lenovo\Pictures\butterfly.jpg');
i2 = imread('C:\Users\Lenovo\Pictures\tiger.jpg');

% Performing addition and substraction
for i = 1:512
    for j = 1:512
        i1_n(i,j) = 255 - i1(i,j);
        i2_n(i,j) = 255 - i2(i,j);
    end
end
ia = imadd(i1,i2);
is = imsubtract(i1,i2);
iand = bitand(i1,i2);
ior = bitor(i1,i2);


% Plotting the images
subplot(2,4,1),imshow(i1),title('Img 1');
subplot(2,4,5),imshow(i2),title('Img 2');
subplot(2,4,2),imshow(i1_n),title('Negative Airplane');
subplot(2,4,6),imshow(i2_n),title('Negative House');
subplot(2,4,3),imshow(ia),title('Added img'); 
subplot(2,4,7),imshow(is),title('Subtracted img');
subplot(2,4,4),imshow(iand),title('Bitwise AND');
subplot(2,4,8),imshow(ior),title('Bitwise OR');
