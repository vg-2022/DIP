

//b. Read and display image in SCILAB/MATLAB

im1=imread("D:\DIP\Pictures\wp3987072-1600x900-wallpapers.jpg");
subplot(4,4,1)
title("Original Image")
imshow(im1);

//c. Resize given image

resize = imresize(im1,2);
subplot(4,4,2);
 title('Resized Image');
imshow(resize);


//d. Convert given color image into gray-scale image

gray=rgb2gray(im1);
subplot(4,4,3)
title("RGB2GRAY")
imshow(gray);


//e. Convert given color/gray-scale image into black & white image

bw=im2bw(gray,0.5);
subplot(4,4,4);
title("B&W");
imshow(bw);


//f. Draw image profile

improfile(image);


//g. Separate color image in three R, G & B planes

[r,c]=size(im1);
Rim=zeros(r,c,3);
Gim=zeros(r,c,3);
Bim=zeros(r,c,3);

Rim(:,:,1)=im1(:,:,1);
Gim(:,:,2)=im1(:,:,2);
Bim(:,:,3)=im1(:,:,3);
subplot(4,4,5);
title("RED");
imshow(uint8(Rim));
subplot(4,4,6);
title("Green");
imshow(uint8(Gim));
subplot(4,4,7);
title("Blue");
imshow(uint8(Bim));

im2=cat(3,Rim(:,:,1),Gim(:,:,2),Bim(:,:,3));
subplot(4,4,8);
imshow(uint8(im2));


//h. Create color image using R, G and B three separate planes

merged = red_img + green_img + blue_img;
subplot(4,4,9),title("Original Image"), imshow(im1);
subplot(4,4,10),title("Red Plane Image"), imshow(Rim);
subplot(4,4,11),title("Green Plane Image"), imshow(Gim);
subplot(4,4,12),title("Blue Plane Image"), imshow(Bim);
subplot(4,4,13),title("Merged RGB Planes Image"), imshow(im2);


//i. Flow control and LOOP in SCILAB

for i=0:10
disp(i)
end


//j. Write given 2-D data in image file

mat = zeros(20,20,'uint8');
mat(5:10, 5:10) = 1; // box
mat(2, 3:15) = 1; //vertical line
mat(2:18, 3) = 1; //horizontal line
mat(1:4:20,1:4:20) = 1; // linear points
disp('Given 2D data : ', mat);
title('Created Image from matrix'), imshow(mat2gray(mat));
