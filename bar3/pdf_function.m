% Create Sample Data(2D standard normal distribution)
x_range = -5:0.5:5;
y_range = -5:0.5:5;
[X,Y] = meshgrid(x_range, y_range);
mu = [0 0];
sigma = [1 0; 0 1];
Z = mvnpdf([X(:) Y(:)], mu, sigma);
Z = reshape(Z, size(X));

% Create the 3D bar chart
figure
% Warnning! we can only pass y-ticks
h = bar3(y_range, Z);
colormap autumn
colorbar
for i=1:length(h)
    zdata = get(h(i), 'Zdata');
    set(h(i), 'Cdata', repmat(max(zdata,[],2),1,4));
end

title('2D Standard Normal Distribution','fontsize',20)
xlabel('X(tick is not correct)','fontsize',15);
ylabel('Y','fontsize',15);