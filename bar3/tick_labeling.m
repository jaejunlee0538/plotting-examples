yTick = {'Men', 'Women'}; % note that they are embraced with cell.
xTick = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Thur', 'Sun'};
Z = round(100*rand(2,7));

% draw bar3
figure
bar3(Z)
% set tick label for each rows and columns
set(gca,'XTickLabel', xTick);
set(gca,'YTickLabel', yTick);

title('Number of Toilet Users','fontsize', 20)
xlabel('Weekdays', 'fontsize', 15);
ylabel('Sex', 'fontsize', 15);