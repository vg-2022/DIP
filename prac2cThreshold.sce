//2c
im=imread("C:\SemV\DIP\A.jpg");
subplot(1,2,1);
title("Original Image");
imshow(im);
th=im2bw(im,110/256);
subplot(1,2,2);
title("Binary Image");
imshow(th);
