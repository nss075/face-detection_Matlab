%% Real-time face detection%%
clc;close all;
%%
new=webcam();
im=snapshot(new);
%detector = vision.CascadeObjectDetector(Name,Value) sets properties using one or more name-value pairs. Enclose each property name in quotes. For example, detector = vision.CascadeObjectDetector('ClassificationModel','UpperBody')
dete=vision.CascadeObjectDetector('mouth','MergeThreshold',100);
pp=imshow(im);
%%
while true
    im=snapshot(new);
    im2=rgb2gray(im);
    bb=step(dete,im2);
    im2=insertObjectAnnotation(im,'rectangle',bb,'mouth');
    imshow(im2);
end