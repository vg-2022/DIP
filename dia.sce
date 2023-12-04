im=rgb2gray(imread("C:\SemV\DIP\Jethalal.jpg"));
figure();
imshow(im);
//guassian noise
//gNoise=imnoise(im,'guassian');
//salt and pepper noise
spNoise=imnoise(im,'salt & pepper');
//speckle noise
speckNoise=imnoise(im,'speckle');
//white noise
//wNoise=imnoise(im,'white');

//filter

//mean filter
mFil=fspecial('average');
//guassian filter
//gFil=fspecial('guassian');

//mean filter on salt & pepper noise
mSp=imfilter(spNoise,mFil);
//median filter on salt & pepper noise
medSp=immedian(spNoise,3);

//mean filter on speckle noise
mSpeck=imfilter(speckNoise,mFil);
//median filter
medSpeck=immedian(speckNoise,3);

//displaying Salt & Pepper Noise and Filtered image
figure();
subplot(1,3,1);
title("Salt & Pepper Noise")
imshow(spNoise);
subplot(132);
title("Mean Filter");
imshow(mSp);
subplot(133);
title("Median filter");
imshow(medSp);

//displaying Speckle Noise and Filtered Image
figure();
subplot(1,3,1);
title("Speckle Noise")
imshow(speckNoise);
subplot(132);
title("Mean Filter");
imshow(mSpeck);
subplot(133);
title("Median filter");
imshow(medSpeck);
//function for RMSR and SNR

function [snr, rmsr] = calcSnrRsmr(mat1, mat2)

    // Calculate sum of squared differences
    sum_x = 0;
    [m, n] = size(mat1);
    for i = 1:m
        for j = 1:n
            x = (mat1(i, j) - mat2(i, j))^2;
            sum_x = sum_x + double(x);
        end
    end

    // Calculate mean squared error
    avg = double(sum_x) / double(m * n);
    rmsr = sqrt(avg);

    // Calculate signal power
    signal_power = 0;
    for i = 1:m
        for j = 1:n
            signal_power = signal_power + double(mat1(i, j)^2);
        end
    end

    // Calculate SNR
    snr = 20 * log10(double(signal_power) / double(sum_x));

endfunction

//applying function to get SNR and RMSR for mean filter on salt & pepper noise
[s1,r1]=calcSnrRsmr(im,mSp);
disp("SNR and RSMR of mean filter on salt & pepper noise :");
disp("RSMR :: ",r1);
disp("SNR :: ",s1);

//applying function to get SNR and RMSR for mean filter on speckle noise
[s2,r2]=calcSnrRsmr(im,mSpeck);
disp("SNR and RSMR of mean filter on Speckle noise :");
disp("RSMR :: ",r2);
disp("SNR :: ",s2);

//applying function to get SNR and RMSR for median filter on salt & pepper noise
[s3,r3]=calcSnrRsmr(im,medSp);
disp("SNR & RSMR of median filter on salt & pepper noise :");
disp("RSMR :: ",r3);
disp("SNR :: ",s3);

//applying function to get SNR and RMSR for mediann filter on Speckle noise
[s4,r4]=calcSnrRsmr(im,medSpeck);
disp("SNR and RSMR of median filter on Speckle noise :");
disp("RSMR :: ",r4);
disp("SNR :: ",s4);
