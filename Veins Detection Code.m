function J = vein(img)

% APPLYING MEDIAN FILTERING TECHNIQUE FOR 
%ADJUSTING BLUREDPIXELS ACCORDING
% TO THE NEARBY PIXELS. 
r = medfilt3(img);

% APPLYING CLAHE ALGORITHM.
cform2lab = makecform('srgb2lab');
LAB = applycform(r, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq (L, 'cliplimit',0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J= applycform(LAB, cform2srgb);

% PLOTTING THE PROCESSED IMAGE
T = adaptthresh(J, 0.6);

%Binarization
BW = imbinarize(J,T);  

%Morphing (Thinning)
BW2 = bwmorph(BW(:,:,1),'thin');
%Plotting
%imshowpair(T, BW2, 'montage')
binaryImage=BW2;

dist2edge=bwdist(~binaryImage);
result = false(size(binaryImage));
[~,ind]=max(dist2edge,[],2);
rowSub=(1:size(result,1))';%transpose to make the shape match ind
colSub=ind;
linind=sub2ind(size(result), rowSub, colSub);
result(linind)=true;
result(~binaryImage)=false;%correct for empty lines in the image
method2=result;

merged2=cat(3,binaryImage,method2,false(size(binaryImage)));
merged2=double(merged2);

imshow(merged2)
title('merged image (method 2)')
end
