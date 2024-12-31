% Given data
outer_length = 24;         % in inches
outer_width = 12;          % in inches
outer_height = 4;          % in inches
target_weight = 15;        % in pounds
specific_weight_aluminum = 0.101; % in lb/in^3

% Outer volume
outer_volume = outer_length * outer_width * outer_height; % in cubic inches

% Define the weight equation as a function of thickness x
weight_func = @(x) specific_weight_aluminum * ...
                  (outer_volume - (outer_length - 2*x) * (outer_width - 2*x) * (outer_height - x));

% Use MATLAB's fsolve to find the thickness x
initial_guess = 0.1; % initial guess for thickness
x_solution = fsolve(@(x) weight_func(x) - target_weight, initial_guess);

% Display the result
fprintf('The required wall thickness x for the box to weigh 15 lb is approximately %.4f inches.\n', x_solution);
