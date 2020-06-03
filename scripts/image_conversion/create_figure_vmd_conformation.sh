for i in vmdsnapshot.0000.Tn.tga.png  vmdsnapshot.0001.tga.png  vmdsnapshot.0002.Tn.tga.png
do
convert $i -trim $i.trim.png
done

FIGURE=figure_vmd_conformation.png
montage -pointsize 24  -geometry 'x400' -tile 2x1 -font Liberation-Sans-Bold -label 'A' vmdsnapshot.0001.tga.png.trim.png  -label 'B' vmdsnapshot.0000.Tn.tga.png.trim.png $FIGURE

