function [NXval,NYval] = periodic_lattice_coordn(N,l,m,nx,ny)

% N = length of side of lattice
% (l,m) is a point in the lattice point

% (nx,ny) are the coordinates of a neighbour in even-r offset coordinates,
% for a cell at origin (0,0)

% Thus to get the lattice indices of the neighbour, (NXval,NYval)
% (1) We need to first "shift the origin" from (0,0) to (l,m)
% (2) Get the lattice indices upon this shifting
% (3) Apply periodic boundary conditions

NXval=mod((-1)^(mod(l+1,2))*ny+l,N);
if NXval==0
NXval=N;
end
            
NYval=mod((-1)^(mod(l+1,2))*nx+m,N);
if NYval==0
NYval=N;
end

end
            