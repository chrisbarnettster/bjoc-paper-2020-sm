
# Cluster analysis with TTClust


Trajectory and pdb created during Galaxy analysis were used. 
In particular the pdb and dcd that only contained the ligand (hydrogens were removed, ions, water, antibody were also removed).


## Install TTClust
This may change depending on the package author. Installed using Ananconda Python and conda. 
`conda install -c tubiana -c conda-forge ttclust`

## Run TTClust

conda activate ttclust
CRD="../../ar20.5_apdtrpap_Tn/datasets/Trajectory_selection_and_merge_on_data_3_and_data_1_10.pdb"
TRAJ="../../ar20.5_apdtrpap_Tn/datasets/Trajectory_selection_and_merge_on_data_3_and_data_1_11.dcd"
SELECT='"all"'
echo ttclust -f $TRAJ -t $CRD -sr ${SELECT} -sa $SELECT
ttclust -f $TRAJ -t $CRD -sr ${SELECT} -sa $SELECT


For ligand analysis of very large trajectories (e.g. solution simulations) 32Gb of RAM was not sufficient. Every 2nd frame was pulled from trajectory for analysis. 

Save every 2nd frame of a trajectory for the solution simulations
```
#!/usr/bin/env python3
import mdtraj as md
import pathlib

topology_file = "Galaxy10-[Trajectory_select_and_merge_on_data_3_and_data_1].pdb" # topology file in PDB format or any supported by mdtraj
dcd_glob = "*.dcd" # a glob for traj files in DCD format or any supported by mdtraj
selection = "not water" # selection is anything but water maybe `not water and not ions` is more useful
trajout = "combined.dcd" # not of output file
list_of_traj = []
directory="." # current dir
list_of_traj.extend([str(i.absolute()) for i in pathlib.Path(directory).glob(dcd_glob)])

for i,t in enumerate(list_of_traj):
    traj = md.load(t, top=topology_file)
    topology = traj.topology
    traj[::2].save("2nd"+str(i)+".dcd")


```


