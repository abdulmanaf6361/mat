% Given data
initial_balance = 300000;       % Initial deposit in dollars
interest_rate = 0.05;           % 5% interest per year
initial_withdrawal = 25000;     % Initial withdrawal amount in dollars
inflation_rate = 0.02;          % 2% inflation rate

% Initialize variables
balance = initial_balance;
withdrawal = initial_withdrawal;
year = 0;
years = [];                    % Array to store each year
balances = [];                 % Array to store balance at each year
withdrawals = [];              % Array to store withdrawal amount each year

% Simulation loop
while balance > 0
    year = year + 1;               % Increase the year
    balance = balance * (1 + interest_rate);  % Add interest to the balance
    balance = balance - withdrawal;           % Subtract the withdrawal
    
    % Store data for plotting
    years = [years, year];
    balances = [balances, balance];
    withdrawals = [withdrawals, withdrawal];
    
    % Increase the withdrawal amount by inflation rate
    withdrawal = withdrawal * (1 + inflation_rate);
end

% Plot the results
figure;
subplot(2,1,1);
plot(years, withdrawals, '-o');
title('Yearly Withdrawals');
xlabel('Year');
ylabel('Withdrawal Amount ($)');
grid on;

subplot(2,1,2);
plot(years, balances, '-o');
title('Account Balance Over Time');
xlabel('Year');
ylabel('Account Balance ($)');
grid on;

% Display the number of years the money lasts
fprintf('The money in the account will last for %d years.\n', year);
