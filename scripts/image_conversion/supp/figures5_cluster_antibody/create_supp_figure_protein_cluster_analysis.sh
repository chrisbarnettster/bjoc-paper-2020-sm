FIGURE=figure_supp_protein_cluster_analysis.png
convert vmdscene.png -trim vmdscene.trim.png
montage -pointsize 96  -geometry 'x1200' -tile 2x1 -font Liberation-Sans-Bold   -label 'A' clustering-dist.png_ar20.5_apdtrpap.png -label 'B' clustering-dist.png_ar20.5_apdtrpap_Tn.png tmp_AB.png
convert clustering-linear.png_ar20.5_apdtrpap.png -crop 0x690+0+30 strip1.png
convert clustering-linear.png_ar20.5_apdtrpap_Tn.png -crop 0x690+0+30 strip2.png
montage -pointsize 192  -geometry 'x1200' -tile 1x2 -font Liberation-Sans-Bold   -label 'C' strip1.png -label 'D' strip2.png  tmp_CD.png
montage -pointsize 96  -geometry 'x1200' -tile 1x3 -font Liberation-Sans-Bold tmp_AB.png tmp_CD.png -label 'E' vmdscene.trim.png  $FIGURE

