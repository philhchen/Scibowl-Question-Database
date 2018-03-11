#!/bin/bash
awk 'BEGIN{system("mkdir "ARGV[1]"_tex");}
	NR%6==1{x=ARGV[1]"_tex/"++i".tex"; print "\\subj{}\n\\mult" > x; print > x}
	NR%6==2{print "\\begin{enumerate}[label={\\scshape \\alph*)}]" > x}
	(NR%6!=1)&&(NR%6!=0){print "\t\\ii",$0 > x}
	NR%6==0{print "\\end{enumerate}\n\\ans{",$0,"}" > x;close(x)}' $1