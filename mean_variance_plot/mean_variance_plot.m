clear all
load data1.txt
load data2.txt
load data3.txt
load data4.txt
y_data = {data1 data2 data3 data4};
tick_label =  {'data1' 'data2' 'data3' 'data4'};
%% 
[hmean, hdev] = draw_meanbar_variance({data1 data2 data3 data4});
%%
set(gcf,'Color',[1 1 1])         % white background color
hmean.FaceColor = [0.8 0.8 0.8]; % bar face color

hdev.Color = [1 0 0];   % deviation bar color
hdev.LineWidth = 2;     % deviation bar line width
hdev.Marker = '.';      % deviation bar marker type
hdev.MarkerSize = 40;   % deviation bar marker size

set(gca, 'XTickLabel', {'data1' 'data2' 'data3' 'data4'}) % x tick label
set(gca, 'FontSize', 25)    % tick font size
xlabel('Data','FontSize', 30); 
ylabel('Time(sec)', 'FontSize',30);