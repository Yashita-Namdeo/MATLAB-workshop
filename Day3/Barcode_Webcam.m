clc;
clear;
close all;
camObj = webcam(1);
% Preview a stream of image frames.
preview(camObj);
while(1)
    % Acquire and display a single image frame.
    img = snapshot(camObj);
    msg=readBarcode(img);
    if isempty(msg)
    clc;
    else
    disp(msg);
    end
end