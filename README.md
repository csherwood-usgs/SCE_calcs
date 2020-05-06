# SCE_calcs
Code used to assess spatially correlated errors in Core Banks difference maps.

This resides in ..\proj\2019_DorianOBX on my TIC laptop.

### Files

`random_select_variogram` - Main code for looping through pre-made map areas (`boxes.mat`), extracting 1000 points from difference maps in each box, and fitting spherical semivariogram. Needs boxes, difference maps (`dmap.mat`), `variogram.m`, and `variogramfit.m`. `dmat.mat` is too big to put in the repo.

`variogram.m` - Calculates semivariogram from x, y data. Wolfgang Schwanghart (w.schwanghart[at]unibas.ch). Downloaded from Mathlab Central. See associated licence file.

`variogram_crs.m` - Slight changes in plotting from `variogram.m`. 

`variogramfit.m` - Fits spherical semivariogram using output from `variogram.m`. Uses `fminsearchbnd.m`. Wolfgang Schwanghart (w.schwanghart[at]unibas.ch). Downloaded from Mathlab Central.  See associated licence file.

`fminsearchbnd.m` - Multidimensional nonlinear minimization with bounds constraints. John D'Errico (woodchips@rochester.rr.com). Downloaded from Matlab Central. See associated licence file.

`make_dmap.m` - Documents how `dmap.mat` was made from the stack of North Core Banks DEMs after they were rotated into cross-shore and alongshore coordinates in `CoreBx/CoreBx_island_v2.ipynb`

`make_many_boxes.m` - Helper routine to repeatedly allow user to click on map coordinates to define corners of boxes. I ran this program twice, creating `box_xy.mat` and `box_xy2.mat`, which I pulled into Matlab, concatenated, and saved as `boxes.mat`

### Example Plot from `random_select_variogram.m`

#![Image description](link-to-image)
