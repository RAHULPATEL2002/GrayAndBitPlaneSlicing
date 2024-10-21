# Image Transformations Lab - MATLAB

## Overview
This repository contains MATLAB code that demonstrates image transformation operations on grayscale images. Specifically, it covers:

1. **Gray Level Slicing** (with and without background).
2. **Bit Plane Slicing**.

The goal of these transformations is to highlight specific gray levels in an image and visualize the significance of each bit plane in image representation.

## Features
- **Gray Level Slicing:**
  - With background: Highlights pixels in a specific gray level range while retaining the original image.
  - Without background: Highlights the selected gray level range and sets the rest of the image to black.

- **Bit Plane Slicing:**
  - Extracts and displays each of the 8 bit planes from a grayscale image, allowing an analysis of how individual bits contribute to image structure.

## Files
- `lab04_UI22EC58.m`: MATLAB script containing the image transformation operations.
- Sample images: `cameraman.jpg` and `comb.jpeg`.

## How to Run
1. Clone the repository.
2. Open the MATLAB script `lab04_UI22EC58.m`.
3. Place the sample images (`cameraman.jpg` and `comb.jpeg`) in the same directory as the script.
4. Run the script to view the transformations.

## Example Output

### Input Images
1. **Grayscale Image 1 (cameraman.jpg):**

   ![image](https://github.com/user-attachments/assets/9a778063-0995-4a03-b954-9cb30b34ce91)


2. **Grayscale Image 2 (comb.jpeg):**

   ![Grayscale Image 2](images/comb.jpeg)

### Output Images

1. **Gray Level Slicing:**
   - **With Background:**
     
     ![Gray Level Slicing with Background](images/gray_slice_with_bg.png)

   - **Without Background:**
     
     ![Gray Level Slicing without Background](images/gray_slice_no_bg.png)

2. **Bit Plane Slicing (comb.jpeg):**

   ![Bit Plane Slicing](images/bit_plane_slicing.png)

## Requirements
- MATLAB (any recent version).
- The provided sample images (`cameraman.jpg`, `comb.jpeg`).

## License
This project is open for educational purposes and free to use.

---

### Author
Rahul Patel  
Roll Number: UI22EC58
