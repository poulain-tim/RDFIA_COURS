function [ I , nomim] = randomImage( baseDir)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


cate = categories();
index = randi(15);

cat = cate{index};

path = strcat(baseDir,cat,'/');
listima=dir([path '*.jpg'] );
n=length(listima);
num = randi(n);

if(num<10)
    nom = strcat(baseDir,cat,'/image_000',num2str(num),'.jpg');
    nomim = strcat(baseDir,cat,'/image_00',num2str(num),'.mat');
elseif(num<100)
    nom = strcat(baseDir,cat,'/image_00',num2str(num),'.jpg');
    nomim = strcat(baseDir,cat,'/image_00',num2str(num),'.mat');
else
    nom = strcat(baseDir,cat,'/image_0',num2str(num),'.jpg');
    nomim = strcat(baseDir,cat,'/image_0',num2str(num),'.mat');
end

I = imread(nom);




end

