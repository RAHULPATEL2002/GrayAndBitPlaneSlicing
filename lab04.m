%% lab :04
%% UI22EC58
% Aim: Take one particular color image, convert it into a gray-scale image
% and perform the following transformation operations:
% 1. Gray level slicing (with and without background)
% 2. Bit Plane slicing

clc; 
close all; 
clear all; 
datetime

% Read the input grayscale image
gray_image = imread('cameraman.jpg');
% Display the original grayscale image
figure;
imshow(gray_image);
title('Grayscale Image UI22EC58'); 

%% 1. Gray Level Slicing
figure;

% Define the range of gray levels for slicing (adjusted for better contrast)
lower_gray = 120; % Lower threshold
upper_gray = 180; % Upper threshold

% Logical mask for the region (gray levels in the specified range)
highlighted_region = gray_image >= lower_gray & gray_image <= upper_gray;

% Gray level slicing with background:
% Retain the original image and highlight pixels in the range
gray_slice_with_bg = gray_image;  % Create a copy of the grayscale image
gray_slice_with_bg(highlighted_region) = 255;  % Highlight the pixels in the range by setting them to white

subplot(2,1,1);
imshow(gray_slice_with_bg);
title('Gray Level Slicing with Background UI22EC58');

% Gray level slicing without background:
% Set all pixels outside the range [lower_gray, upper_gray] to black
gray_slice_no_bg = zeros(size(gray_image));  % Initialize a black image (background)
gray_slice_no_bg(highlighted_region) = 255;  % Highlight the pixels by setting them to white

subplot(2,1,2);
imshow(gray_slice_no_bg);
title('Gray Level Slicing without Background UI22EC58');



% Read the input grayscale image (cameraman.tif is already grayscale)
gray_image2 = imread('comb.jpeg');
% Display the original grayscale image
figure;
imshow(gray_image2);
title('Grayscale Image UI22EC58');

%% 2. Bit-Plane Slicing
% Extract and display each bit plane of the grayscale image
figure;
title('UI22EC58');
for bit = 1:8
    bit_plane = bitget(gray_image2, bit);  % Extract the bit plane
    subplot(2, 4, bit);
    imshow(logical(bit_plane));
    title(['Bit Plane ', num2str(bit)]);
end
