class1 = {[2.8, 3.3], [3.3, 2.9], [3.0, 3.1], [3.4, 3.4], [2.5, 3.0], ...
          [3.0, 2.0], [3.4, 3.4], [3.4, 2.4], [3.6, 3.2], [2.6, 3.5]};

class2 = {[0.9, 1.3], [0.2, 0.8], [0.9, 1.1], [1.3, 1.5], [0.8, 0.8], ...
          [1.2, 1.0], [1.5, 1.2], [1.6, 0.5], [1.7, 1.3], [0.4, 1.4]};

class3 = {[-1.3, -0.9], [-0.7, -1.3], [-1.1, -1.0], [-1.3, -1.5], [-1.0, -1.2], ...
          [-1.1, -1.0], [-1.5, -1.4], [-1.8, -1.8], [-1.7, -1.3], [-1.0, -1.6]};

% Extract x and y coordinates for each class
class1_x = cellfun(@(x) x(1), class1);
class1_y = cellfun(@(x) x(2), class1);
class2_x = cellfun(@(x) x(1), class2);
class2_y = cellfun(@(x) x(2), class2);
class3_x = cellfun(@(x) x(1), class3);
class3_y = cellfun(@(x) x(2), class3);

% Define hyperplane parameters
w1 = [1.3, 0.4422]; % Coefficients for hyperplane 1
b1 = -3.8624; % Bias term for hyperplane 1

w2 = [0.7448, 0.5045]; % Coefficients for hyperplane 2
b2 = 0.6874; % Bias term for hyperplane 2

% Generate points for hyperplanes
 x_range = linspace(min([class1_x, class2_x, class3_x]), max([class1_x, class2_x, class3_x]), 100);
 y_hyperplane1 = (-w1(1) * x_range - b1) / w1(2);
 y_hyperplane2 = (-w2(1) * x_range - b2) / w2(2);

% Plot
figure;
scatter(class1_x, class1_y, 'red', 'filled', 'DisplayName', 'Class 1');
hold on;
scatter(class2_x, class2_y, 'blue', 'filled', 'DisplayName', 'Class 2');
scatter(class3_x, class3_y, 'green', 'filled', 'DisplayName', 'Class 3');
plot(x_range, y_hyperplane1, 'k--', 'LineWidth', 2, 'DisplayName', 'Hyperplane 1');
plot(x_range, y_hyperplane2, 'k-', 'LineWidth', 2, 'DisplayName', 'Hyperplane 2');
hold off;
xlabel('X');
ylabel('Y');
title('Linearly Separable Dataset with Three Classes');
legend('Location', 'best');
grid on;