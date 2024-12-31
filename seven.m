% List of singers
singers = {'John', 'Mary', 'Tracy', 'Mike', 'Katie', 'David'};

% Generate a random order
random_order = singers(randperm(length(singers)));

% Display the random order
disp('Random order of singers:');
disp(random_order');
