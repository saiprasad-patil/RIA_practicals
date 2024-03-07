clc;  
clear;
close all;  
a1=imread('cameraman.tif');  
b1=im2gray(a1) ;
b = imnoise(b1,'gaussian');
bsp = imnoise(b1,'salt & pepper');
bs = imnoise(b1,'speckle');
bp = imnoise(b1,'poisson');
ma33 = fspecial('average',[3 3]);
[r,c] = size(b);
ma233 = (1/16)* [1 2 1;
    2 4 2;
    1 2 1];

for x=2:r-1
    for y=2:c-1
        R=[b(x-1,y-1),b(x-1,y),b(x-1,y+1), img(x,y-1),img(x,y),img(x,y+1), img(x+1,y-1),img(x+1,y),img(x+1,y+1)];
        R1=sort(R);
        b(x,y)=R1(5);
    end
end


 
bg33 = imfilter(b,ma33);

bsp33 = imfilter(bsp,ma33);

 
bg233 = imfilter(b,ma233);

bsp233 = imfilter(bsp,ma233);

 
bs33 = imfilter(b,ma33);

bp33 = imfilter(bsp,ma33);

 
bs233 = imfilter(b,ma233);

bp233 = imfilter(bsp,ma233);

 
figure('Name','Gaussian');
subplot(5,3,1) ;
imshow(b1) ;
title('Original image');
subplot(5,3,4) ;
imshow(b) ;
title('Gaussian Noised image');
subplot(5,3,5) ;
imshow(bg33,[]) ;
title('3x3 Average Mask image');
subplot(5,3,6) ;
imshow(bg33,[]) ;
title('3x3 Median Mask image');



figure('Name','Speckle')
subplot(4,3,4) ;
imshow(b1) ;
title('Original image');
subplot(4,3,6) ;
imshow(bsp) ;
title('Salt & Pepper Noised image');
subplot(4,3,5) ;
imshow(bsp33,[]) ;
title('3x3 Average Mask image');


subplot(4,3,7) ;
imshow(b1) ;
title('Original image');
subplot(4,3,9) ;
imshow(bs) ;
title('Speckle Noised image');
subplot(4,3,8) ;
imshow(bs33,[]) ;
title('3x3 Average Mask image');

subplot(4,3,10) ;
imshow(b1) ;
title('Original image');
subplot(4,3,12) ;
imshow(bp) ;
title('Poisson Noised image');
subplot(4,3,11) ;
imshow(bp33,[]) ;
title('3x3 Average Mask image');


