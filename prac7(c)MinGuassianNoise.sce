//7(c)
im1 = imread("C:\SemV\DIP\Dp1.jpeg");
im2 = imnoise(im1, 'gaussian');
f = fspecial('average', 3);
subplot(131), title('Original Image'), imshow(im1);
subplot(132), title('Gaussian Noised Image'), imshow(im2);
subplot(133), title('Filtered Image'), imshow(imfilter(im1, f));
