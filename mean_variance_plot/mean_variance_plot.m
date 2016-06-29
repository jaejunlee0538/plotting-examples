clear all
load data1.txt
load data2.txt
load data3.txt
load data4.txt
y_data = [data1 data2 data3 data4];
x_data = 1:size(y_data,2);
%%
mean_data = mean(y_data);
std_data = std(y_data);
%%
figure(1)
set(gcf,'Color',[1 1 1])
hold off
% bar(x_data, mean_data, 'FaceColor', [0.5 0.5 0.5], 'EdgeColor', [0 0 0], 'LineWidth',2)
bar(x_data, mean_data, 'FaceColor', [0.5 0.5 0.5])
hold on
h = errorbar(x_data, mean_data, std_data, 'rx', 'LineWidth',3);
set(gca, 'XTickLabel',{'data1' 'data2' 'data3' 'data4'})
