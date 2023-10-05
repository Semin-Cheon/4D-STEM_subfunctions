%% 4D-STEM data viewer %%
% Semin.Ch
% 2023.09.16
% MDAIL,Physics department, KAIST
% chsm0338@kaist.ac.kr
% or chsm0338@gmail.com

% Description: Whole 4D-STEM images in a tilt angle can be shown with several figures

% Input:  - Full_4D-images: 4D-STEM data at a tilt angle
%         - Row bin sizes: row size in a figure
%         - Col bin sizes: col size in a figure

% Output: 4D-STEM windows

% The number of the figures will be set automatically with you row & col
% bin sizes. or you can modify the way of display!

% To use this script, you will need the code "Find_Divisors.m" which
% generates a list of divisors of some given number. ex) input: 8 -> Output: 1, 2, 4, 8
% From the divisor list, you will set Row and Col size in a figure

%% Load 4D-STEM data
Fo_D_STEMData = Full_4D_image;
% Fo_D_STEMimages = Full_4D_STEM_data;
% Fo_D_STEMimages = STEM_data.calculated_4D_data;
[maxrow, maxcol] = size(Fo_D_STEMData);

%% Calculate possible bin number for plotting the 4D-STEM data

% Calculate 
Possible_Row_Bins = Find_Divisors(maxrow);
Possible_Col_Bins = Find_Divisors(maxcol);

fprintf('\n Possible row bin sizes: \n')
disp(Possible_Row_Bins)
fprintf('\n Possible column bin sizes: \n')
disp(Possible_Col_Bins)

Row_bin_size = input('Sellect your row bin size: ');
Col_bin_size = input('Sellect your column bin size: ');

% Row_bin_size = 8;
% Col_bin_size = 8;

NumOfBins = maxrow*maxcol/(Row_bin_size*Col_bin_size);
fprintf('\n Number of bins will be %.f. \n\n',NumOfBins)


%% Plotting

fprintf(' >> Generating %.f figures.. \n\n',NumOfBins)

% make figures
k = 3 -1;
l = 3 -1;
figure(2)

% Designation 4D images in a figure
for i = 1 : Row_bin_size % Row

    for j = 1 : Col_bin_size % Column
       
        subplot(Row_bin_size , Col_bin_size , Row_bin_size*(i-1) + j)

        D = Fo_D_STEMData(i + Row_bin_size*k ,j + Col_bin_size*l);

        D = D{1};
        imagesc(D);colormap('jet')
        caxis([0 max(max(D))])
        set(gca,'xtick',[],'ytick',[])
        
    end

end

% end