//7(b)
im1 = rgb2gray(imread("C:\SemV\DIP\Dp1.jpeg"));
im2 = imnoise(im1, 'salt & pepper', 0.3);
subplot(131), title('Original Image'), imshow(im1);
subplot(132), title('Salt & Pepper Noised Image'), imshow(im2);
subplot(133), title('Filtered Image'), imshow(immedian(im1,3));
