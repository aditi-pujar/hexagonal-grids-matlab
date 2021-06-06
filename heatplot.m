function [] = heatplot(sample)
N = size(sample);
NN = N(1);

X=zeros(NN);
Y=zeros(NN);
rad3=sqrt(3);

%Building even-r lattice
for j=1:NN
    for i=1:NN
        Y(i,j)= -i*3/2;
         
         if mod(i,2)==0
         X(i,j)= j*rad3;
         
         else
         X(i,j)= j*rad3 + rad3/2;
         end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[XV,YV]=voronoi(X(:),Y(:));

xlimval = (7/4)*NN;
ylimval = -(3/2)*NN;
sizeval = 100*42/xlimval;
figure

plot(XV,YV,'k-','LineWidth',1.5);
axis equal; xlim([1 xlimval]); ylim([ylimval -1]); zoom on;
hold on;
scatter(X(:),Y(:),sizeval,sample(:),'filled');
%colormap('gray');
colorbar;

%NOTE: While the zooming of the axes is approximately correctly scaled, the
%size of points in the scatter plots will have to be scaled according to
%what looks appropriate (completely fills in the cells but does not
%"overwrite" the unit cell boundaries.

%For N = 24, sizeval = 95 works very well.