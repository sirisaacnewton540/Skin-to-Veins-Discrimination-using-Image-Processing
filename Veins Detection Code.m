Il = imread('veins.jpg');
Ir = imread('veins.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins2.jpg');
Ir = imread('veins2.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins5.jpg');
Ir = imread('veins5.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins10.jpg');
Ir = imread('veins10.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins12.jpg');
Ir = imread('veins12.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins13.jpg');
Ir = imread('veins13.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins14.jpg');
Ir = imread('veins14.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins15.jpg');
Ir = imread('veins15.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins16.jpg');
Ir = imread('veins16.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');

Il = imread('veins17.jpg');
Ir = imread('veins17.jpg');
IrNew = imhistmatch (Ir, Il);
Itest = rgb2gray(Il);
RGB =Il;
cform2lab = makecform('srgb2lab');
LAB = applycform(RGB, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);
figure
imshowpair (RGB, J, 'montage');
title('Original Image VS Desired Image');