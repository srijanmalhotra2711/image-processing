I = imread('C:\Users\Lenovo\Pictures\tiger.jpg');
imshow(I)
background = imopen(I,strel('disk',15));
figure
surf(double(background(1:8:end,1:8:end))),zlim([0 255]);
ax = gca;
ax.YDir = 'reverse';
I2 = I - background;
imshow(I2)
I3 = imadjust(I2);
imshow(I3);
