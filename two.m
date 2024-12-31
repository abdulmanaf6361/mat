% Define the variables
T_0 = 120; % Initial temperature of the can
T_s = 38; % Temperature of the refrigerator
k = 0.45; % Constant
t = 3; % Time in hours

% Calculate the temperature after 3 hours
T = T_s + (T_0 - T_s) * exp(-k*t);

% Display the result
fprintf('The temperature of the can after 3 hours is %.0f degrees F.\n', T);