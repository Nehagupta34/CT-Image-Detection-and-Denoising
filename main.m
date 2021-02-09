clear;
display('           ');
display('           ');
display('IEEE TRANSACTIONS ON IMAGE PROCESSING, VOL. 9, NO. 9, SEPTEMBER 2000');
display('           ');
display('Adaptive Wavelet Thresholding for Image Denoising and Compression');
display('           ');
display('S. Grace Chang, Student Member, IEEE, Bin Yu, Senior Member, IEEE, and Martin Vetterli, Fellow, IEEE');

display('           ');
display('----- liujiabin   ');


f=imread('lena512.bmp');
f = double(f);
figure, imshow(f,[]);title('original image');
noise = randn(size(f));
noise = noise/sqrt(mean2(noise.^2));
% add Gaussian noise
g = double(f)+ 20*noise;
figure,imshow(g,[]);title('noisy image');
filtertype = 'db8';
tic;out = BaysShrink(g,filtertype,4);toc;
figure,imshow(out,[]);title('denoisy image');
PSNR(out,f);
MSE(out,f)
