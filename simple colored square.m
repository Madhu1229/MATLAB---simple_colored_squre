row = 256;
col = 256;

% Create an RGB image initialized to black
img = zeros(row, col, 3); 

% Define color blocks using repmat
img(1:100, 1:100, :) = repmat(reshape([1, 0, 0], 1, 1, 3), 100, 100);   % Top-left: Red
img(1:100, 101:200, :) = repmat(reshape([0, 1, 0], 1, 1, 3), 100, 100);  % Top-middle: Green
img(1:100, 201:256, :) = repmat(reshape([0, 0, 1], 1, 1, 3), 100, 56);  % Top-right: Blue

img(101:200, 1:100, :) = repmat(reshape([1, 1, 0], 1, 1, 3), 100, 100);  % Middle-left: Yellow
img(101:200, 201:256, :) = repmat(reshape([1, 0, 1], 1, 1, 3), 100, 56); % Middle-right: Magenta

img(201:256, 1:100, :) = repmat(reshape([0, 1, 1], 1, 1, 3), 56, 100);  % Bottom-left: Cyan
img(201:256, 101:200, :) = repmat(reshape([0.5, 0.2, 0.8], 1, 1, 3), 56, 100); % Bottom-middle: Custom purple
img(201:256, 201:256, :) = repmat(reshape([0.5, 0.5, 0.5], 1, 1, 3), 56, 56); % Bottom-right: Gray

% Add white horizontal and vertical lines
img(100:105, :, :) = 1; % White horizontal line
img(150:155, :, :) = 1; % White horizontal line
img(:, 100:105, :) = 1; % White vertical line
img(:, 150:155, :) = 1; % White vertical line

% **Middle gradient removed!**

% Display the image
imshow(img);
