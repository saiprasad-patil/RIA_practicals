clc;
close all;
image=imread('cameraman.tif');
img1=im2gray(image);
b3 = imnoise(img1,"poisson");

img=double(b3);
[r,c]=size(b3);
mask=ones(3,3);
b=img1;
b1=img1;
for x=2:r-1
    for y=2:c-1
        R2=img(x-1,y-1)*mask(1,1)+img(x-1,y)*mask(1,2)+img(x-1,y+1)*mask(1,3)+img(x,y-1)*mask(2,1)+img(x,y)*mask(2,2)+img(x,y+1)*mask(2,3)+img(x+1,y-1)*mask(3,1)+img(x+1,y)*mask(3,2)+img(x+1,y+1)*mask(3,3);
        b1(x,y)=round(R2/9);

    end
end

for x=2:r-1
    for y=2:c-1
        R=[img(x-1,y-1),img(x-1,y),img(x-1,y+1), img(x,y-1),img(x,y),img(x,y+1), img(x+1,y-1),img(x+1,y),img(x+1,y+1)];
        R1=sort(R);
        b(x,y)=R1(5);
    end
end


subplot(1,3,1);
imshow(b3);
title('Original image');

subplot(1,3,3);
imshow(b1,[]);
title('3X3 Average Filter');

subplot(1,3,2);
imshow(b,[]);
title('3X3 Median filter');





