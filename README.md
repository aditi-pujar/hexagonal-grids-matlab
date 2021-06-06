# hexagonal-grids-matlab
These are a couple of codes that build hexagonal grids, generate heatmaps and help access different neighbours of a  point in such grids.

To the best of my knowedge, Matlab, has no simple toolboxes or packages for building and working with hexagonal lattices. (Unlike Python and its hexalattice.)
For a hexagonal lattice, there are multiple systems to denote lattice points. Given a point, getting the indices of it's neighbours is not a trivial task (unlike in the square lattice). Neither is generating a heatmap with the hexagonal unit cells outlined. Both require an understanding of the geometries of the lattice.

(I found many resources on this excellent website: https://www.redblobgames.com/grids/hexagons/ and am grateful for the same).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I hope the following pieces of Matlab code are helpful: 

(1) heatplot.m ~ takes in a 2D square lattice that denotes the colors of the required variable and plots the heatmap on a hexagonal lattice

(2) DiagonalNeighbours.m ~ takes value of radius, r as input and returns 2 arrays corresponding to the x, y indices of the diagonal/'von Neumann' neighbours of a cell at the origin (0,0), within that radius. (Also returns total number of neighbours)

(3) MooreNeighbours.m ~ exactly like the DiagonalNeighbours.m, it takes a radius r as input and returns indices of the Moore neighbours within that radial neighborhood.

(4) periodic_lattice_coordn.m ~ the indices of the neighbors are in a different coordinate system (the even-r offset coordinates); they are also for a cell at the origin. Thus, to get the neighbours of a given lattice point, we must "shift the origin" and also convert the coordinates of these neighbours to lattice coordinates. This function does the above and also (separately) imposes periodic boundary conditions.

(5) test_diagonal.m and (6) test_Moore.m are demos of how to use the above codes and their outputs are test_Diagonal.jpg, test_Moore.jpg respectively.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
