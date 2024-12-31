x = pi/5;

% Calculate the left-hand side (LHS) of the equation
lhs = cos(x/2)^2;

% Calculate the right-hand side (RHS) of the equation
rhs = (tan(x) + sin(x)) / (2*tan(x));

% Display the results
fprintf('LHS = %f\n', lhs);
fprintf('RHS = %f\n', rhs);

% Check if the LHS and RHS are equal (within a tolerance)
if abs(lhs - rhs) < 1e-10
    fprintf('The identity is verified.\n');
else
    fprintf('The identity is not verified.\n');
end