
for i in rmsd*.png
do
convert $i -crop 2400x2000-0+400 trim.$i
done

declare -A files
files[A]="trim.rmsd_histo_apdtrpap.png"
files[B]="trim.rmsd_histo_apdtrpap_Tn.png"
files[C]="rmsf_histo_apdtrpap.png"
files[D]="rmsf_histo_apdtrpap_Tn.png"
files[E]="trim.rmsd_histo_ar20.5_apdtrpap.png"
files[F]="trim.rmsd_histo_ar20.5_apdtrpap_Tn.png"
files[G]="rmsf_histo_ar20.5_apdtrpap.png"
files[H]="rmsf_histo_ar20.5_apdtrpap_Tn.png"

for key in ${!files[@]}
do
    echo ${key} ${files[${key}]}
    montage -pointsize 72  -geometry 'x1200' -tile x1 -font Liberation-Sans-Bold -label ${key}  ${files[${key}]} figure_${key}.png

done


