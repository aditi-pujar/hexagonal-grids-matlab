N = 24;
lattice = zeros(N);

i = randi(N);
j = randi(N);
r = randi(int8(N/2));

lattice(i,j) = 1;
%Coloring the Moore neighbours of a lattice point (i,j) within a radius r:
[NX,NY,nn]=MooreNeighbours(r);

for k =1:nn
    [nx,ny] = periodic_lattice_coordn(N,i,j,NX(k),NY(k));
    lattice(nx,ny) = 5;
end

heatplot(lattice)