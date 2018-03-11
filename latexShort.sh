#!/bin/bash
awk -v subj=$2 'BEGIN{system("mkdir "ARGV[1]"_tex");}
	NR%2==1{x=ARGV[1]"_tex/"++i".tex"; print "\\subj{"subj"}\n\\short" > x; print > x}
	NR%2==0{print "\n\\ans{",$0,"}" > x;close(x)}' $1