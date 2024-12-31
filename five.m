% Given parameters
v0 = 250; % initial velocity in m/s
theta = 65; % launch angle in degrees
theta = deg2rad(theta); % convert angle to radians
wind_speed = 30; % wind speed in m/s (west direction)
g = 9.81; % gravitational acceleration in m/s^2

% Initial velocity components without wind
v0x = 0; % no initial eastward velocity
v0y = v0 * cos(theta); % northward component
v0z = v0 * sin(theta); % upward component

% Time of flight (ignoring wind) - determined by vertical motion
t_flight = 2 * v0z / g; % total time until it hits the ground
t = linspace(0, t_flight, 1000); % time vector for simulation

% Trajectory without wind
y_no_wind = v0y * t; % northward position (y-axis)
z_no_wind = v0z * t - 0.5 * g * t.^2; % upward position (z-axis)

% Trajectory with wind
x_wind = wind_speed * t; % westward position (x-axis) due to wind
y_wind = y_no_wind; % northward position remains the same
z_wind = z_no_wind; % upward position remains the same

% Plotting the trajectories
figure;
plot3(zeros(size(y_no_wind)), y_no_wind, z_no_wind, 'b-', 'LineWidth', 1.5); % without wind
hold on;
plot3(x_wind, y_wind, z_wind, 'r-', 'LineWidth', 1.5); % with wind
xlabel('X (m, West)');
ylabel('Y (m, North)');
zlabel('Z (m, Upward)');
legend('Without Wind', 'With Wind');
title('Projectile Trajectory with and without Wind');
grid on;

% Adjust the view for better visualization
view(-45, 30);
