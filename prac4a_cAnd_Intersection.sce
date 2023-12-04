 //4a,4c And / Intersection
im1=imread("C:\SemV\DIP\A.jpg");
im2=imread("C:\SemV\DIP\rogcity.jpg");
im2=imresize(im2,[123,198]);

figure();
subplot(1,2,1);
title("Image 1");
imshow(im1);

subplot(1,2,2);
title("Image 2");
imshow(im2);

im3=bitand(im1,im2);
figure();
title("AND of Image1 And Image2");
imshow(im3);
