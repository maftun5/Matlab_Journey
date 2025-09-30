% ShapeGenerator.m
% Generates shapes using * based on user input

size = input('Enter the size of the shape: ');

fprintf('\n=== Solid Square ===\n');
for i = 1:size
    for j = 1:size
        fprintf('*');
    end
    fprintf('\n');
end

fprintf('\n=== Open Square ===\n');
for i = 1:size
    for j = 1:size
        if i == 1 || i == size || j == 1 || j == size
            fprintf('*');
        else
            fprintf(' ');
        end
    end
    fprintf('\n');
end

fprintf('\n=== Triangle ===\n');
for i = 1:size
    for j = 1:i
        fprintf('*');
    end
    fprintf('\n');
end