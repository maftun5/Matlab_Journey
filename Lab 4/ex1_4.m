% Prompt the user for a length and units

length = input('Enter the length: ');
% 's' flag makes input return a string
units = input('Is that f(eet) or m(eters)?: ', 's');
% Display results with formatting
fprintf('The character is %2c.\n', units) % %c prints a single char, 2 means the char takes up 2 spaces width
fprintf('The number is %-6.3f.\n', length) % %f floating point format, .3 3 digits after decimal point, '-6' left align within 6-char space
