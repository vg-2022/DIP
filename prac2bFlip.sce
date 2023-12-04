//2b
im=imread("C:\SemV\DIP\A.jpg");
subplot(1,2,1);
title("Original Image");
imshow(im);
flip_im=flipdim(im,2);
subplot(1,2,2);
title("Flipped Image");
imshow(flip_im);
