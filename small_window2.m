clear, clc
file_path = '.\';
save_path = '.\rec\';
if ~exist(save_path,'dir')
    mkdir(save_path);
end
% 加载图像到内存，如读取matlab自带的图像，并将其显示出来
name1 = dir(strcat(file_path,'Parrots*.tif'));
name2 = dir(strcat(file_path,'hat*.tif'));
leftup2 = [124,109]; % 正好和matlab默认的取点位置是相反的
rightdown2 = [152,132];
leftup1 = [61,129];
rightdown1 = [83,147];
ratio = 3;
for i = 1:length(name1)
    img_name = name1(i).name;
    img_name = img_name(1:end-4);
    I = imread(name1(i).name);
    I1 = ShowEnlargedRectangle(I,leftup1,rightdown1,ratio,2,2);
%     figure;imshow(I1); 
%     axis on
    imwrite(I1,strcat(save_path,name1(i).name));
end 
for i = 1:length(name2)
    img_name = name2(i).name;
    img_name = img_name(1:end-4);
    I = imread(name2(i).name);
    I2 = ShowEnlargedRectangle(I,leftup2,rightdown2,ratio,2,2);
%     figure;imshow(I1); 
%     axis on
    imwrite(I2,strcat(save_path,name2(i).name));
end
% img_name = name2(1).name;
% img_name = img_name(1:end-4);
% I = imread(name2(1).name);
% I1 = ShowEnlargedRectangle(I,leftup,rightdown,ratio,2,2);
% % figure;imshow(I1); 
% imwrite(I1,strcat(save_path,name2(1).name));
% figure;imshow(I);

axis on