% Parameters
r = 120; % crank length in mm
L = 250; % connecting rod length in mm
rpm = 500; % crank rotation speed in rpm
omega = 2 * pi * rpm / 60; % angular velocity in rad/s

% Time settings for one revolution
T = 60 / rpm; % period of one revolution in seconds
t = linspace(0, T, 1000); % time vector for one revolution

% Calculate theta (angular position of crank)
theta = omega * t; % in radians

% Position of the piston
x = r * cos(theta) + sqrt(L^2 - (r * sin(theta)).^2);

% Velocity of the piston (dx/dt)
v = -r * omega * sin(theta) + (r^2 * omega * cos(theta) .* sin(theta)) ./ sqrt(L^2 - (r * sin(theta)).^2);

% Acceleration of the piston (d^2x/dt^2)
a = -r * omega^2 * cos(theta) - ((r * omega * sin(theta)).^2 ./ (L^2 - (r * sin(theta)).^2)) + ...
    ((r^2 * omega^2 * cos(theta).^2) ./ sqrt(L^2 - (r * sin(theta)).^2));

% Plot results
figure;
subplot(3, 1, 1);
plot(t, x);
xlabel('Time (s)');
ylabel('Position (mm)');
title('Piston Position');

subplot(3, 1, 2);
plot(t, v);
xlabel('Time (s)');
ylabel('Velocity (mm/s)');
title('Piston Velocity');

subplot(3, 1, 3);
plot(t, a);
xlabel('Time (s)');
ylabel('Acceleration (mm/s^2)');
title('Piston Acceleration');

% Adjust layout
sgtitle('Piston Position, Velocity, and Acceleration for One Revolution of the Crank');
