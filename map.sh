#!/bin/sh
#$ -cwd

#for i in `ls /ifs/scratch/c2b2/ip_lab/yshen/Yale/RNA*/*.txt`
while read line
do
	let "j += 1"
	p=`expr ${j} % 2`
	if [[ $p -eq 1 ]]
	then
		line1=$line
		echo $line1
	else
		line2=$line
		echo $line2
		qsub -l mem=8G,time=16:: run_ruby.sh $line1 $line2
	fi
 done < RNA_FILES

#ruby step_1_mapping_atom.rb -i /ifs/scratch/c2b2/ip_lab/yshen/Yale/old_samples/WZ1034_3_sequence.txt -r /ifs/data/c2b2/ip_lab/shares/DATA/Sequencing/resources/bcm_hg18.fasta

