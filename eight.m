function [h_max, d_max] = projectile_trajectory(v0, theta)
    % Constants
    g = 9.81; % gravitational acceleration in m/s^2

    % Convert angle to radians
    theta = deg2rad(theta);

    % Initial velocity components
    v0x = v0 * cos(theta); % horizontal component
    v0y = v0 * sin(theta); % vertical component

    % Maximum height (h_max)
    h_max = (v0y^2) / (2 * g);

    % Time of flight
    t_flight = 2 * v0y / g;

    % Maximum distance (d_max)
    d_max = v0x * t_flight;

    % Time vector for plotting
    t = linspace(0, t_flight, 1000);

    % Trajectory calculations
    x = v0x * t; % horizontal position
    y = v0y * t - 0.5 * g * t.^2; % vertical position

    % Plot trajectory
    figure;
    plot(x, y, 'b-', 'LineWidth', 1.5);
    xlabel('Horizontal Distance (m)');
    ylabel('Vertical Distance (m)');
    title('Projectile Trajectory');
    grid on;

    % Annotate maximum height and distance
    hold on;
    plot(d_max, 0, 'ro'); % point at maximum range
    plot(d_max/2, h_max, 'go'); % point at maximum height
    legend('Trajectory', 'Max Distance', 'Max Height');
    hold off;

    % Display the results
    fprintf('Maximum Height: %.2f m\n', h_max);
    fprintf('Maximum Distance: %.2f m\n', d_max);
end

% Example usage
v0 = 230; % initial velocity in m/s
theta = 39; % launch angle in degrees
[h_max, d_max] = projectile_trajectory(v0, theta);
