% make_many_boxes - Pick corners for variogram boxes
% dmap was made by make_dmap.m
% I ran this twice and concatenated the box_xy structs, saved as boxes.mat

clear
format compact
load dmap
%%
mapn=1
dmapn = dmap(:,:,mapn)';
%% plot Sep-Aug diff map
figure(1); clf
pcolorjw(dmapn(:,:))
caxis([-1 1])
cmap = cmocean('balance');
colormap(cmap)
box_xy=[];
for i=1:11
    fprintf(1,'click bottom left, then top right\n')
    [xc,yc]=ginput(2);
    box_xy(i).xc = xc;
    box_xy(i).yc = yc;
end
save('box_xy2.mat','box_xy')