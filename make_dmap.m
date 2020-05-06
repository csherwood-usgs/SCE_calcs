% make_dmap - Make and save a .mat version of the difference map
clear
format compact
d='C:\crs\proj\2019_DorianOBX\WayneWright_flights\CoreBx'
f='ncorebx.nc'
p=sprintf('%s\\%s',d,f)
maps=ncread(p,'__xarray_dataarray_variable__');
dmap=diff(maps,1,3);
save( 'dmap.mat','dmap')