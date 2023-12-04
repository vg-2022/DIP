//5a
im=rgb2gray(imread("C:\SemV\DIP\rogcity.jpg"));
figure();
subplot(1,2,1);
title("Original Image");
imshow(im);

hist1=imhist(im);
subplot(1,2,2);
title("Histogram");
imshow(hist1);

eq=imhistequal(im);
figure();
subplot(1,2,1);
title("Equalised Image");
imshow(eq);
hist2=imhist(eq);
subplot(1,2,2);
title("Equalized Histogram");
imshow(hist2);
