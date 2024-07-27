for i=1:100 %limiting the code to run for upto 100 images 
    img = snapshot(cam); % cam is the image recieved by the NIR Camera sensor

    vein(img);
    
end
