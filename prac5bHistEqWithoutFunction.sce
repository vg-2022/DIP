//5b
im=rgb2gray(imread("C:\SemV\DIP\rogcity.jpg"));
figure();
subplot(1,2,1);
title("Original Image");
imshow(im);

hist1=imhist(im);
subplot(1,2,2);
title("Histogram");
imshow(hist1);

function eq_img = histeq(im)
    [freq, bins] = imhist(im,256);
    bins = 255;
    [mr, nc] = size(im);
    freq = cumsum(freq);
    npixels = prod(size(im));
    output = round(bins.*(freq./npixels));
    // Creating Equalized Image
    for i = 1:mr
        for j = 1:nc
            im(i,j) = output(im(i,j) + 1);
        end
    end
endfunction

he_img = uint8(histeq(im));
figure(),
subplot(1,2,1);
title("Equalized Image ");
imshow(he_img);
subplot(1,2,2);
title("Histogram Equalization");
imhist(he_img, [], 1);
