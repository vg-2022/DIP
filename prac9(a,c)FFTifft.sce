//FFT AND IFFT
img=rgb2gray(imread("C:\SemV\DIP\Dp1.jpeg"));
im_fg=fft(im2double(img));

im_fgi=ifft(im_fg);

subplot(2,2,1);
imshow(img);
title("Original RGB Image");

subplot(2,2,2);
imshow(img);
title("GRAY SCALE IMG");

subplot(2,2,3);
imshow(im_fg);
title("FFT");

subplot(2,2,4);
imshow(im_fgi);
title("Inverse FFT");
