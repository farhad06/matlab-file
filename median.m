clc
close all
clear all
img_01 = imread('cameraman.tif');
img=imnoise(img_01,'salt & pepper');
[row,col]=size(img);
img_new=zeros(row,col);
med_filter=zeros(3,3);
x=0;
y=0;
for r=2:row-1
    for c=2:row-1
        for i=1:3
            for j=1:3
                med_filter(i,j)=img(r+x-1,c+y-1);
            end
            y=0;
            x=x+1;
        end
        x=0;
        med_filter=sort(med_filter);
        img_new(r,c)=med_filter(2,2);
    end
end
subplot(1,3,1), imshow(img_01), title('Original Image');
subplot(1,3,2), imshow(img), title('Noisy Image');
subplot(1,3,3), imshow(img_new, []), title('Image After 3x3 Median Filter');