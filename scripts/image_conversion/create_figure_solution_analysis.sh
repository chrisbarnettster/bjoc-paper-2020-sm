FIGURE=figure_solution_analysis.png
montage -pointsize 24  -geometry 'x400' -tile 2x3 -font Liberation-Sans-Bold -label 'A' rmsd_histo_apdtrpap.png  -label 'B' rmsd_histo_apdtrpap_Tn.png -label 'C' endtoend_apdtrpap.png -label 'D' endtoend_apdtrpap_Tn.png  -label 'E' ramachandran_apdtrpap.png -label 'F' ramachandran_apdtrpap_Tn.png $FIGURE

