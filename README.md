# Skin to Veins Detection

## Overview

The Vein Finder project is designed to assist healthcare providers in locating veins easily when they are not visible to the naked eye. This project uses near-infrared (NIR) imaging technology to create a map of veins and project it onto the skin. This helps in procedures such as intravenous cannulation, blood withdrawal, and administering medications, making the process more efficient and less painful for patients.

## Features

- Real-time vein detection using NIR imaging
- Image processing using MATLAB
- Adaptive Histogram Equalization (AHE) and Contrast Limited Adaptive Histogram Equalization (CLAHE) techniques
- Hardware integration with Raspberry Pi, NoIR camera, and NIR LED array
- Processes up to 100 images for vein detection

## Hardware Requirements

- **Raspberry Pi**: A small single-board computer used to run the software.
- **NoIR Camera Module**: A camera without an infrared filter to capture images under NIR light.
- **NIR LED Array**: Provides illumination in the near-infrared spectrum to highlight veins.
- **Power Supply**: 12V rechargeable battery and 5V supply source.

## Software Requirements

- **MATLAB**: Used for image processing and controlling the hardware.
- **MATLAB Support Package for Raspberry Pi**: Necessary to interface with the Raspberry Pi.

## Setup Instructions

### Hardware Setup

1. **Assemble the Hardware**:
    - Connect the NoIR camera module to the Raspberry Pi using the camera interface (CSI) port.
    - Arrange the NIR LED array around the camera to provide consistent illumination to the target area.
    - Connect the 12V rechargeable battery to power the NIR LED array.
    - Use a 5V power supply to power the Raspberry Pi.

2. **Connecting Raspberry Pi to MATLAB**:
    - Ensure the Raspberry Pi is connected to the same network as your MATLAB system.
    - Obtain the IP address of the Raspberry Pi. You can find this using the command `hostname -I` in the Raspberry Pi terminal.

### Software Setup

1. **Install MATLAB**: Ensure you have MATLAB installed on your computer.
2. **Install MATLAB Support Package for Raspberry Pi**:
    - Open MATLAB.
    - Go to the Add-Ons menu and select "Get Hardware Support Packages".
    - Follow the instructions to install the Raspberry Pi support package.
3. **Set Up MATLAB and Simulink Support Package for Raspberry Pi**:
    - Open MATLAB and click the Add-Ons drop-down menu on the top right.
    - Click on Get Hardware Support Packages in the drop-down menu to start the installer. Select 'Install from the Internet' as the source for installing the support package.
    - Select Raspberry Pi from the list of support packages and follow the instructions to complete the installation.

4. **Configure MATLAB to Connect to Raspberry Pi**:
    - In MATLAB, open the Support Package Installer and follow the instructions to configure the network settings.
    - Enter the IP address of the Raspberry Pi and provide the login credentials (default username: `pi`, default password: `raspberry`).

### Running the Code

1. **Initialize the Camera and Capture Images**:
    - Ensure your Raspberry Pi is connected to the same network as your MATLAB system.
    - Use the following script to capture and process up to 100 images from the camera for vein detection:

    ```matlab
    cam = webcam; % Initialize the camera

    for i = 1:100
        img = snapshot(cam); % Capture an image from the camera
        vein(img); % Process the image for vein detection
    end
    ```

2. **Execute the MATLAB Script**: Use the provided MATLAB script `vein.m` for real-time vein detection.

## MATLAB Code

Here is the MATLAB code used for real-time vein detection:

```matlab
function J = vein(img)

% APPLYING MEDIAN FILTERING TECHNIQUE FOR 
% ADJUSTING BLURRED PIXELS ACCORDING TO THE NEARBY PIXELS.
r = medfilt3(img);

% APPLYING CLAHE ALGORITHM.
cform2lab = makecform('srgb2lab');
LAB = applycform(r, cform2lab); 
L = LAB(:,:,1); 
LAB(:,:,1) = adapthisteq(L, 'cliplimit', 0.02, 'Distribution', 'rayleigh'); 
cform2srgb = makecform('lab2srgb');
J = applycform(LAB, cform2srgb);

% PLOTTING THE PROCESSED IMAGE
T = adaptthresh(J, 0.6);

% Binarization
BW = imbinarize(J, T);  

% Morphological Thinning
BW2 = bwmorph(BW(:,:,1), 'thin');

% Distance Transformation
binaryImage = BW2;
dist2edge = bwdist(~binaryImage);
result = false(size(binaryImage));
[~, ind] = max(dist2edge, [], 2);
rowSub = (1:size(result, 1))'; % Transpose to make the shape match ind
colSub = ind;
linind = sub2ind(size(result), rowSub, colSub);
result(linind) = true;
result(~binaryImage) = false; % Correct for empty lines in the image
method2 = result;

% Merging the Original Binary Image with the Highlighted Veins
merged2 = cat(3, binaryImage, method2, false(size(binaryImage)));
merged2 = double(merged2);

% Display the Result
imshow(merged2)
title('Merged Image (Method 2)')

end
```

## Project Report

For more details about the project, including hardware setup and implementation, refer to the [Project Report](path_to_report).

## Contributors

**- Pushpendra Singh(Team Lead)**
- Ashutosh Kumar
- Divyank Ranjan
- Manish Kumar

## Acknowledgments

This project was guided by Dr. Ajay Tiwari at the Department of Electronics & Communication Engineering, U.I.E.T., CSJM University, Kanpur.

