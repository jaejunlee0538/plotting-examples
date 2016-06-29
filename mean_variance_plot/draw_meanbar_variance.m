function [ h_mean_bar, h_dev_bar ] = draw_mean_variance(data)
% data : 
N = length(data);
x_data = 1:N;
mean_data = zeros(1, N);
std_data = zeros(1, N);
for i=1:length(x_data)
    mean_data(i) = mean(data{i});
    std_data(i) = std(data{i});
end

% h_mean_bar = bar(x_data, mean_data, 'FaceColor', [0.5 0.5 0.5], 'EdgeColor', [0 0 0], 'LineWidth',2)
h_mean_bar = bar(x_data, mean_data, 'FaceColor', [0.5 0.5 0.5]);
hold on
h_dev_bar = errorbar(x_data, mean_data, std_data, 'rx', 'LineWidth',3);
end

