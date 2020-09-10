import mdtraj as md
import sys
import argparse

def parse_command_line(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument('--istr', help='input str')
    parser.add_argument('--itraj', help='input traj')
    parser.add_argument('--itrajs', nargs='*', help='input traj')
    parser.add_argument('--isele', help='selection')
    parser.add_argument('--o_str', help='MDA Ramachandran plot')
    parser.add_argument('--o_trj', help='Seaborn Ramachandran plot')
    return parser.parse_args()

args = parse_command_line(sys.argv)
list_of_traj = [args.itraj]
if args.itrajs is not None:
     for t in args.itrajs:
          list.of_traj.append(t)
#print(list_of_traj, args.istr)
#topology = md.load(args.istr).topology
#print(topology)
try:
    traj = md.load(list_of_traj, top=args.istr)
except Exception as einstance:
    print(type(einstance))
    print(einstance.args)
    print(einstance)
topology = traj.topology
atoms_to_keep = topology.select(args.isele)
traj.restrict_atoms(atoms_to_keep)
newstruct = traj.slice(1)
newstruct.save(args.o_str)
traj.save(args.o_trj)

