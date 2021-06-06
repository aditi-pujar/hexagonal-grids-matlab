function [neighX,neighY,Nn]=MooreNeighbours(r)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% neighX, neighY are vectors containing the indices of the Moore neighbours
% of origin, (0,0) within given radius, r.
% Nn = number of Moore neighbours for a given r

% Nn = 6(1+2+..r)=3*r*(r+1)

Nn = 3*r*(r+1);

%For origin at (0,0)

%CUBIC INDICES
listX=zeros(Nn,1);
listY=zeros(Nn,1);
listZ=zeros(Nn,1);

neighX=zeros(Nn,1);
neighY=zeros(Nn,1);

k=1;
for x=-r:r
    for y=-r:r
        for z=-r:r

        if (x==0 && y==0 && z==0)
            continue
        end
        
        if x+y+z==0
            listX(k)=x;
            listY(k)=y;
            listZ(k)=z;
            
            neighX(k)= x + (z+mod(z,2))/2;
            neighY(k)=z;
            k=k+1;
        end
        end
    end
end
% returns neighboring indices in offset coordinates of the even-r type
% even-r means the even rows are "shoved" towards the right by 1/2 a column


% As these are indices for the origin, to get neighbours of some point (l,m)
% We need to "shift the origin" and convert coordinates using
% periodic_lattice_coordn.m
end

