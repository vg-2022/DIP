//high paimgimg filtering
img = rgb2gray(imread("C:\SemV\DIP\Dp1.jpeg"));

h1 = mkfftfilter(img,'gauimgimg',0.2,0.3);
imga1 = fft2(im2double(img));
imgb1 = imga1.*fftimghift(1-h1);
imgc1 = real(ifft(imgb1));   


imgubplot(1,2,1);
imimghow(img);
title("Original Image");


imgubplot(1,2,2);
imimghow(imgc1);
title("High paimgimg gauimgimg,0.2,0.3");
