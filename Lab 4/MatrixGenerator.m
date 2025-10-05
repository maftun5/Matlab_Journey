% MatrixGenerator.m
% Prompt the user for size of a matrix, generate a matrix of random integers, and save to a file

% Let's first clear command window and workspace
clc;
clear;
fprintf('=== MATRIX GENERATOR ===\n\n');
fprintf('Enter the dimensions for your matrix:\n');

% Get number of rows and columns
r = input('Enter the number of rows: ');
c = input('Enter the number of columns: ');

% Generate a matrix of random integers
% randi(100) generates random integers nbetween 1 and 100
% Format: randi([min, max], rows, columns)
mat = randi(100,r,c);

% Display the generated matrix
fprintf('\nGenerated Matrix:\n');
disp(mat);

% Display matrix properties
fprintf('\nMatrix Properties:\n');
fprintf('\t Size: %dx%d\n', size(mat, 1), size(mat, 2));
fprintf('\t Total elements: %d\n', numel(mat)); % numel - number of array elements
fprintf('\t Minimum Value: %d\n', min(mat(:)));
fprintf('\t Maximum Value: %d\n', max(mat(:)));

% Save matrix to file
filename = 'generated_matrix.dat';
% Save with -ascii flag for human readable format
save filename mat -ascii
fprintf('\nMatrix successfully saved to: %s\n', filename);

% Verify saved file
% Let's check if file exists and confirm
if exist(filename, 'file') % Format: exist(name, kind)
    file_info = dir(filename);
    fprintf('File size: %.2f KB\n', file_info.bytes/1024);
    fprintf('File saved on: %s\n', file_info.date);
else
    fprintf('Error: File was not created successfully!\n');
end
