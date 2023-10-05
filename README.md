# 4D-STEM data viewer

Semin.Ch
2023.09.16
MDAIL,Physics department, KAIST
chsm0338@kaist.ac.kr or chsm0338@gmail.com

# Description: Whole 4D-STEM images in a tilt angle can be shown with several figures

# Input:  
          - Full_4D-images: 4D-STEM data at a tilt angle
          - Row bin sizes: row size in a figure
          - Col bin sizes: col size in a figure

# Output:
          - 4D-STEM windows

% The number of the figures will be set automatically with you row & col bin sizes. or you can modify the way of display!

% To use this script, you will need the code "Find_Divisors.m" which generates a list of divisors of some given number. ex) input: 8 -> Output: 1, 2, 4, 8
% From the divisor list, you will set Row and Col size in a figure
