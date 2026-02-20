img = imread('../Images/baby.jpg');
img = rgb2gray(img);
img = imresize(img,[128 128]);
img = im2double(img);

out = cnn_conv_hdl(img);
imshow(out, []);
title('CNN Convolution Output');
