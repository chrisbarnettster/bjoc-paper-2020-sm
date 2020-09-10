for i in end*.png
do
convert $i -crop 7680x5360-0+400 trim.$i
done

declare -A files
files[A]="trim.endtoend_apdtrpap.png"
files[B]="trim.endtoend_apdtrpap_Tn.png"
files[C]="trim.endtoend_ar20.5_apdtrpap.png"
files[D]="trim.endtoend_ar20.5_apdtrpap_Tn.png"

for key in ${!files[@]}
do
    echo ${key} ${files[${key}]}
    montage -pointsize 72  -geometry 'x1200' -tile x1 -font Liberation-Sans-Bold -label ${key}  ${files[${key}]} figure_${key}.png

done



