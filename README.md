# 4D-STEM data viewer

Semin.Ch /
MDAIL,Physics department, KAIST /
chsm0338@kaist.ac.kr or chsm0338@gmail.com /
2023.09.16

- Description:  
          - Whole 4D-STEM images in a tilt angle can be shown with several figures
- Input:  
          - Full_4D-images: 4D-STEM data at a tilt angle
          - Row bin sizes: row size in a figure
          - Col bin sizes: col size in a figure
- Output:
          - 4D-STEM windows
          
  The number of the figures will be set automatically with you row & col bin sizes. or you can modify the way of display!
  
To use this script, you will need the code "Find_Divisors.m" which generates a list of divisors of some given number. ex) input: 8 -> Output: 1, 2, 4, 8

# 4d-STEM Propagator

Semin.Ch /
MDAIL,Physics department, KAIST /
chsm0338@kaist.ac.kr or chsm0338@gmail.com /
2023.09.20

- Description:
  - Generates 4D-STEM tilt dataset from a 3D volume.
  - I made this code by Modifying and fusing MSET-subfunctions<https://github.com/jhlee0667/MSET>
  - 
- Input:
          - 3D volume and the directory of the volume
          - 
- Output: 4D-STEM tilt dataset
  
To use this code properly, you must need MSET subfunctions developed by Juhyeok Lee(Github ID: jhlee0667)
