//low pass filtering

img = imread("C:\SemV\DIP\Dp1.jpeg");
S=rgb2gray(img)

h1 = mkfftfilter(S,'gauss',0.2,0.3);
Sa1 = fft2(im2double(S));
Sb1 = Sa1.*fftshift(h1);
Sc1 = real(ifft(Sb1));  

subplot(1,2,1);
imshow(S);
title("Original Image");

subplot(1,2,2);
imshow(Sc1);
title("Low pass gauss,0.2,0.3");
