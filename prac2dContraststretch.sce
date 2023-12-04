//2d contrast Stretching
im=rgb2gray(imread("C:\SemV\DIP\A.jpg"));
funcprot(0);
function img=cont_stretch(img)
    a=min(img( : ));
    b=max(img( : ));
    image=(img-a)*(255/(b-a));
endfunction;
cs= cont_stretch(im);

figure();
subplot(1,2,1);
title("Original Image");
imshow(im);
subplot(1,2,2);
title("Histogram");
imshow(imhist(im));

figure();
subplot(1,2,1);
title("Stretched Image");
imshow(cs);
subplot(1,2,2);
title("Histogram");
imshow(imhist(cs));
