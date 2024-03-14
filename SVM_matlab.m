% Define data
class1 = {[0.9, 1.3], [1.2, 0.8], [0.9, 1.1], [1.3, 1.5], [1.0, 1.1], ...
          [1.2, 1.0], [1.5, 1.2], [1.6, 0.5], [1.7, 1.3], [0.4, 1.4]};
class2 = {[2.8, 3.3], [3.3, 2.9], [3.0, 3.1], [3.4, 3.3], [2.9, 3.0], ...
          [3.0, 3.0], [3.4, 3.4], [3.4, 2.4], [3.6, 3.2], [2.6, 3.5]};
class3 = {[-1.3, -0.9], [-0.7, -1.3], [-1.1, -1.0], [-1.3, -1.5], [-1.0, -1.2], ...
          [-1.1, -1.0], [-1.5, -1.4], [-1.4, -0.4], [-1.7, -1.3], [-0.6, -1.6]};

% Extract x and y coordinates for each class
class1_x = cellfun(@(x) x(1), class1);
class1_y = cellfun(@(x) x(2), class1);
class2_x = cellfun(@(x) x(1), class2);
class2_y = cellfun(@(x) x(2), class2);
class3_x = cellfun(@(x) x(1), class3);
class3_y = cellfun(@(x) x(2), class3);

% Plot
figure;
scatter(class1_x, class1_y, 'red', 'filled', 'DisplayName', 'Class 1');
hold on;
scatter(class2_x, class2_y, 'blue', 'filled', 'DisplayName', 'Class 2');
scatter(class3_x, class3_y, 'green', 'filled', 'DisplayName', 'Class 3');

% Define hyperplanes (example)
hyperplane1 = @(x) 0.7 - 0.5 * x;
hyperplane2 = @(x) 3.5 - 0.8 * x;

% Plot hyperplanes
fplot(hyperplane1, [0 3.5], 'k--', 'LineWidth', 1, 'DisplayName', 'Hyperplane 1');
fplot(hyperplane2, [0 3.5], 'k--', 'LineWidth', 1.5, 'DisplayName', 'Hyperplane 2');


hold off;

xlabel('X');
ylabel('Y');
title('Linearly Separable Dataset with Three Classes');
legend('Location', 'best');
grid on;