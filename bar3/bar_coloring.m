[X,Y] = meshgrid(-5:5,-3:3);
Z = rand(size(X));
% Z = X.*Y;

%% coloring with colormap
subplot(2,2,1)
bar3(Z)
colorbar
% colors in colormap map to along with X axis.
colormap jet
title('Zet Colormap', 'fontsize', 20)
xlabel('X','fontsize',15)
ylabel('Y','fontsize',15)

%% coloring random color for each columns

subplot(2,2,2)
h = bar3(Z);
colorbar
for i=1:length(h)
    zdata = get(h(i), 'Zdata');
    set(h(i), 'facecolor', rand(1,3)) % determines i-th column's color in rgb 
% see the face properties
% http://kr.mathworks.com/help/matlab/ref/primitivesurface-properties.html
    set(h(i), 'LineWidth', 2)
end
title('Random Coloring', 'fontsize', 20)
xlabel('X','fontsize',15)
ylabel('Y','fontsize',15)

%% gradation along with height
subplot(2,2,3)
h = bar3(Z);
colorbar
for i=1:length(h)
    zdata = get(h(i), 'Zdata');
    set(h(i), 'Cdata', zdata);
    set(h(i), 'facecolor', 'interp')
end
title('Gradation with Z', 'fontsize', 20)
xlabel('X','fontsize',15)
ylabel('Y','fontsize',15)

%% coloring each bars according to it's height
% http://kr.mathworks.com/matlabcentral/newsreader/view_thread/139644
subplot(2,2,4)
h = bar3(Z);
colorbar
for i=1:length(h)
    zdata = get(h(i), 'Zdata');
    set(h(i), 'Cdata', repmat(max(zdata,[],2),1,4));
end
title('Coloring with Z', 'fontsize', 20)
xlabel('X','fontsize',15)
ylabel('Y','fontsize',15)

