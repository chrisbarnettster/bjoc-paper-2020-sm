

declare -A files
files[A]="clustering_apdtrpap.png"
files[B]="clustering_apdtrpap_Tn.png"
files[C]="vmdscene.trim.png"
files[D]="clustering_ar20.5_apdtrpap.png"
files[E]="clustering_ar20.5_apdtrpap_Tn.png"
files[F]="vmdscene.protein.trim.png"

for key in ${!files[@]}
do
    echo ${key} ${files[${key}]}
    montage -pointsize 72  -geometry 'x1200' -tile x1 -font Liberation-Sans-Bold -label ${key}  ${files[${key}]} figure_${key}.png

done



