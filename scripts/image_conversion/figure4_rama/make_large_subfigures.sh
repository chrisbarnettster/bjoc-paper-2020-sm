
for i in vmdscene_lig*.dat.tga.png
do
convert $i -trim $i.trim.png
convert $i.trim.png -bordercolor White -border 80x80 $i.trim.png
done

for i in ??.png
do
convert $i -trim `basename -s .png $i`.trim.png
done

for i in ar20.5_??.png
do
convert $i -trim `basename -s .png $i`.trim.png
done

declare -A files
files[A]="3a.trim.png"
files[B]="3b.trim.png"
files[C]="3c.trim.png"
files[D]="3d.trim.png"
files[E]="4a.trim.png"
files[F]="4b.trim.png"
files[G]="4c.trim.png"
files[H]="4d.trim.png"
files[I]="ar20.5_3a.trim.png"
files[J]="ar20.5_3b.trim.png"
files[K]="ar20.5_3c.trim.png"
files[L]="ar20.5_3d.trim.png"
files[M]="ar20.5_4a.trim.png"
files[N]="ar20.5_4b.trim.png"
files[O]="ar20.5_4c.trim.png"
files[P]="ar20.5_4d.trim.png"

for key in ${!files[@]}
do
    echo ${key} ${files[${key}]}
    montage -pointsize 72  -geometry 'x1200' -tile x1 -font Liberation-Sans-Bold -label ${key}  ${files[${key}]} figure_${key}.png

done



FIGUREB=figure_graphical_labels.png
montage -pointsize 72  -geometry 'x1200' -tile 1x -font Liberation-Sans-Bold -label "Asp 3" vmdscene_lig3.dat.tga.png.trim.png -label "Thr 4" vmdscene_lig4.dat.tga.png.trim.png   $FIGUREB




