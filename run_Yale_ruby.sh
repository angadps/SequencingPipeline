#!/bin/sh
#$ -cwd

ruby step_1_mapping_atom.rb -i $1 -p $2 -r /ifs/data/c2b2/ip_lab/shares/DATA/Sequencing/resources/bcm_hg18.fasta

