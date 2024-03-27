lass1 = {[2.8, 3.3], [3.3, 2.9], [3.0, 3.1], [3.4, 3.4], [2.5, 3.0], ...
[3.0, 2.0], [3.4, 3.4], [3.4, 2.4], [3.6, 3.2], [2.6, 3.5]};

class2 = {[0.9, 1.3], [0.2, 0.8], [0.9, 1.1], [1.3, 1.5], [0.8, 0.8], ...
[1.2, 1.0], [1.5, 1.2], [1.6, 0.5], [1.7, 1.3], [0.4, 1.4]};

class3 = {[-1.3, -0.9], [-0.7, -1.3], [-1.1, -1.0], [-1.3, -1.5], [-1.0, -1.2], ...
[-1.1, -1.0], [-1.5, -1.4], [-1.4, -0.4], [-1.7, -1.3], [-1.0, -1.6]};

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

% Add labels to data points
class1_labels = arrayfun(@(n) sprintf('C1_%d', n), 1:length(class1_x), 'UniformOutput', false);
class2_labels = arrayfun(@(n) sprintf('C2_%d', n), 1:length(class2_x), 'UniformOutput', false);
class3_labels = arrayfun(@(n) sprintf('C3_%d', n), 1:length(class3_x), 'UniformOutput', false);

text(class1_x, class1_y, class1_labels, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(class2_x, class2_y, class2_labels, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(class3_x, class3_y, class3_labels, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

% Define hyperplanes
hyperplane1 = @(x) 2.5 - 0.5 * x;
hyperplane2 = @(x) -0.5 - 0.5 * x;

% Plot hyperplanes
fplot(hyperplane1, [-2 4], 'k', 'LineWidth', 1, 'DisplayName', 'Hyperplane 1');
fplot(hyperplane2, [-2 4], 'k--', 'LineWidth', 1.5, 'DisplayName', 'Hyperplane 2');

hold off;
xlabel('X');
ylabel('Y');
title('Linearly Separable Dataset with Three Classes');
legend('Location', 'best');
grid on;

class1_labels = arrayfun(@(n) sprintf('C1_%d', n), 1:length(class1_x), 'UniformOutput', false);
class2_labels = arrayfun(@(n) sprintf('C2_%d', n), 1:length(class2_x), 'UniformOutput', false);
class3_labels = arrayfun(@(n) sprintf('C3_%d', n), 1:length(class3_x), 'UniformOutput', false);

text(class1_x, class1_y, class1_labels, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(class2_x, class2_y, class2_labels, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(class3_x, class3_y, class3_labels, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');