I = imread('cameraman.tif');
IB = imnoise(I,'salt & pepper');
figure(1);
subplot(1,2,1);
subimage(I);
title('Original Image');
subplot(1,2,2);
subimage(IB);
title('Noisy Image');

N = ones(3)/9;
If1 = imfilter(IB,N);
figure(2);
image(If1);
title('Noisy image filtered by a 3-by-3 averaging filter');
v = 0:1/255:1; colormap([v' v' v']);

If2 = medfilt2(IB,[3 3]);
figure(3);
image(If2);
title('Noisy Image filtered by a 3-by-3 median filter');
v = 0:1/255:1; colormap([v' v' v']);