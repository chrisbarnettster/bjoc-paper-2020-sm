


for i in vmdscene_lig*.dat.tga.png
do
convert $i -trim $i.trim.png
convert $i.trim.png -bordercolor White -border 80x80 $i.trim.png
done

for i in ??.png
do
convert $i -trim `basename -s .png $i`.trim.png
done

FIGURE=figure_complex_ramachandran.png
montage -pointsize 48  -geometry 'x1200' -tile 4x -font Liberation-Sans-Bold -label "A" 2a.trim.png -label "B" 2b.trim.png -label "C" 2c.trim.png -label "D" 2d.trim.png -label "E" 3a.trim.png -label "F" 3b.trim.png -label "G" 3c.trim.png -label "H" 3d.trim.png -label "I" 4a.trim.png -label "J" 4b.trim.png -label "K" 4c.trim.png -label "L" 4d.trim.png   -label "M" 5a.trim.png -label "N" 5b.trim.png -label "O" 5c.trim.png -label "P" 5d.trim.png   -label "Q" 6a.trim.png -label "R" 6b.trim.png -label "S" 6c.trim.png -label "T" 6d.trim.png    -label "U" 7a.trim.png -label "V" 7b.trim.png -label "W" 7c.trim.png -label "X" 7d.trim.png  $FIGURE

FIGURE=figure_complex_ramachandran_labels.png
montage -pointsize 48  -geometry 'x1200' -tile 1x -font Liberation-Sans-Bold -label "2 Pro" vmdscene_lig2.dat.tga.png.trim.png -label "3 Asp" vmdscene_lig3.dat.tga.png.trim.png -label "4 Thr" vmdscene_lig4.dat.tga.png.trim.png -label "5 Arg" vmdscene_lig5.dat.tga.png.trim.png  -label "6 Pro" vmdscene_lig6.dat.tga.png.trim.png -label "7 Ala" vmdscene_lig7.dat.tga.png.trim.png    $FIGURE

convert +append figure_complex_ramachandran_labels.png figure_complex_ramachandran.png ramachandran_protein.png
