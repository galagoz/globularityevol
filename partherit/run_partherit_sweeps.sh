#!/bin/sh
#$ -N partherit
#$ -cwd
#$ -q multi15.q
#$ -S /bin/bash

/data/workspaces/lag/workspaces/lg-ukbiobank/projects/globularity/evolution/scripts/globularityevol/partherit/partherit_baseline.sh /data/clusterfs/lag/users/gokala/globularity-evol/data/munge_glob_sumstats.gz Sweeps /data/clusterfs/lag/users/gokala/globularity-evol/partherit/results/globularity.sweeps.results
