FIGURE=figure_5_cluster.png

FIGUREA=ligand.png

convert vmdscene.png -trim vmdscene.trim.png
montage -pointsize 48  -geometry 'x1200' -tile 2x1 -font Liberation-Sans-Bold   -label 'A' clustering_apdtrpap.png -label 'B' clustering_apdtrpap_Tn.png  $FIGUREA
montage -pointsize 48  -geometry 'x1200' -tile 1x2 -font Liberation-Sans-Bold $FIGUREA -label 'C' vmdscene.trim.png  $FIGUREA

FIGUREB=protein.png
convert vmdscene.protein.png -trim vmdscene.protein.trim.png
montage -pointsize 48  -geometry 'x1200' -tile 2x1 -font Liberation-Sans-Bold   -label 'D' clustering_ar20.5_apdtrpap.png -label 'E' clustering_ar20.5_apdtrpap_Tn.png  $FIGUREB
#montage -pointsize 48  -geometry 'x1200' -tile 1x2 -font Liberation-Sans-Bold $FIGUREB -label 'F' vmdscene.protein.trim.png  $FIGUREB


convert -append $FIGUREA $FIGUREB $FIGURE


