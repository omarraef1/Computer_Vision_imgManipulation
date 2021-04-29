function [num_questions] = hw1(infile)
% hw1(infile) function responsible for running, analyzing, and outputting
% images and their info
num_questions = 0; %incremented after every problem executed
close all;
ourImg = imread(infile);
%figure 1
figure, imshow(ourImg);
num_questions = num_questions + 1;
imwrite(ourImg, 'out.jpg');
num_questions = num_questions + 1;
format compact;
disp(' ');
num_questions = num_questions + 1;

% Proof of output for prob 7
help hw1
num_questions = num_questions + 1;

firstWho = whos;
disp(' ');

secondWho = whos('ourImg');
secondWho

sizing = size('ourImg');
disp(' ');

dimArr = num2cell(secondWho.size);
[num_rows num_cols num_channels] = dimArr{:};

disp(' ');

%red
red=ourImg(:,:,1);
red_min = min(red(:));
red_max = max(red(:));

red_min
red_max

%green
green = ourImg(:,:,2);
green_min = min(green(:));
green_max = max(green(:));

green_min
green_max

%blue
blue = ourImg(:,:,3);
blue_min = min(blue(:));
blue_max = max(blue(:));

blue_min
blue_max

%overall
overall = ourImg;
overall_min = min(ourImg(:));
overall_max = max(ourImg(:));

overall_min
overall_max

CtoG = rgb2gray(ourImg);
%figure 2
figure, imshow(CtoG);
whos('CtoG')
num_questions = num_questions + 1;

%figure 3
extractedArr = [red green blue];
figure, imshow(extractedArr);


%switched channels' image
%green from original as red
%blue from original as green
%red from original as blue
newImg = cat(3, green, blue, red);
%figure 4
figure, imshow(newImg);
num_questions = num_questions + 1;



%THIS COMMENT STUB STATES THAT 
%THIS CODE IS THE PROPERTY OF OMAR R.G. (UofA Student)


%manipulating matrices
%b&w img from question 8, first grayscale

%figure 5
doubledImgExt = double(CtoG) / 255;
figure, imshow(doubledImgExt);

%rr = range(CtoG); %irrelevant
%size(CtoG)

%5th p of every 5th r on doubledImg
[r, c] = size(doubledImgExt);
for ro = 1:5:r
    for col = 1:5:c
        doubleImgExt(ro,col) = 1;
    end
end
%figure 6
figure, imagesc(doubleImgExt);
%figure 7
figure, imshow(doubleImgExt);
%check that latticed imgs are done correctly
num_questions = num_questions + 1;

%histograms
r1 = reshape(red.',1,[]);
%figure 8
figure, histogram(r1, 20);
g1 = reshape(green.',1,[]);
%figure 9
figure, histogram(g1, 20);
b1 = reshape(blue.',1,[]);
%figure 10
figure, histogram(b1, 20);
num_questions = num_questions + 1;

%plotting
x = linspace(-pi,pi);
%figure 11
figure, plot(x,sin(x), 'b');

hold on;
plot(x, cos(x), 'r');
num_questions = num_questions + 1;

%playing with linear algebra
eqSys = [3 4 1; 2 -1 2; 1 1 -1];
lftSys = [9; 8; 0];

eqSys
lftSys

solv = inv(eqSys)*lftSys;
solv


correctSolv = linsolve(eqSys, lftSys);
correctSolv

subtracted = correctSolv - solv;
subtracted
num_questions = num_questions + 1;


end


