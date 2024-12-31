% Define the mass and force data
mass = [2, 4, 5, 10, 20, 50];
force = [12.5, 23.5, 30, 61, 117, 294];

% Calculate the coefficient of friction for each test
g = 9.81; % Acceleration due to gravity
friction_coefficient = force ./ (mass * g);

% Display the results
fprintf('Test\tMass (kg)\tForce (N)\tCoefficient of Friction\n');
for i = 1:length(mass)
    fprintf('%d\t%.0f\t\t%.1f\t\t%.3f\n', i, mass(i), force(i), friction_coefficient(i));
end

% Calculate the average coefficient of friction
avg_friction = mean(friction_coefficient);
fprintf('\nAverage coefficient of friction: %.3f\n', avg_friction);