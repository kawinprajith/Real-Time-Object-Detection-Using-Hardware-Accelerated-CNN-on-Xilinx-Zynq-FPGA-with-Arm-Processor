function out = cnn_conv_hdl(img)

F = fimath( ...
    'RoundingMethod','Floor', ...
    'OverflowAction','Wrap', ...
    'ProductMode','SpecifyPrecision', ...
    'ProductWordLength',16, ...
    'ProductFractionLength',8, ...
    'SumMode','SpecifyPrecision', ...
    'SumWordLength',16, ...
    'SumFractionLength',8);

img = fi(img, 0, 8, 7, 'fimath', F);

kernel = fi([ 1 0 -1;
              1 0 -1;
              1 0 -1 ], ...
              1, 8, 0, 'fimath', F);

[H,W] = size(img);
out = fi(zeros(H,W), 1, 16, 8, 'fimath', F);

for i = 2:H-1
    for j = 2:W-1
        acc = fi(0, 1, 16, 8, 'fimath', F);

        for ki = -1:1
            for kj = -1:1
                pixel  = img(i+ki, j+kj);
                weight = kernel(ki+2, kj+2);
                acc = acc + pixel * weight;
            end
        end

        if acc < 0
            acc = 0;   % ReLU
        end

        out(i,j) = acc;
    end
end
end
