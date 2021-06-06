function [neighX,neighY,Nn]=DiagonalNeighbours(r)

% neighX, neighY are vectors containing the indices of the diagonal neighbours
% of the origin, (0,0) within given radius, r.
% Nn = number of diagonal neighbours for a given r

Nn=6*r;

% Diagonal elements in cubic coordinates go as
%{(1,-1,0),(-1,1,0),(1,0,-1),(-1,0,1),(0,1,-1),(0,-1,1)};

diagX=[1,-1,1,-1,0,0];
diagY=[-1,1,0,0,1,-1];
diagZ=[0,0,-1,1,-1,1];

listX=zeros(Nn,1);
listY=zeros(Nn,1);
listZ=zeros(Nn,1);

neighX=zeros(Nn,1);
neighY=zeros(Nn,1);

k3=1;
for k1=1:r
    for k2=1:6
    listX(k3)=k1*diagX(k2);
    listY(k3)=k1*diagY(k2);
    listZ(k3)=k1*diagZ(k2);
    
    neighX(k3)= listX(k3) + (listZ(k3)+mod(listZ(k3),2))/2;
    neighY(k3)= listZ(k3);
    k3=k3+1;
    end
end
% returns neighboring indices in offset coordinates of the even-r type
% even-r means the even rows are "shoved" towards the right by 1/2 a column

% As these are indices for the origin, to get neighbours of some point (l,m)
% We need to "shift the origin" and convert coordinates using
% periodic_lattice_coordn.m
end
