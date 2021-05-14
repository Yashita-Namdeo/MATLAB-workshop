clc;
clear;
close all;
camObj = webcam(4);
% Preview a stream of image frames.
preview(camObj);
while(1)
    % Acquire and display a single image frame.
    img = snapshot(camObj);
    msg=ocr(img);
    if isempty(msg)
    clc;
    else
    clc;
    msg=msg.Text;
    disp(msg);
    end
end