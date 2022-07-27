drc off
box 0 0 0 0
gds readonly true
gds rescale false
gds read /usr/local/share/qflow/tech/osu035/osu035_stdcells.gds2
load address_gen
select top cell
expand
gds write address_gen
quit
