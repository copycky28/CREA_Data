#!/bin/sh -f

dir=/scratch/project_2000221/copycky/data/combine_cctm/ind_2021_new

for mmm in 04 07 10 12
do

file1=$dir/AVE_2021.Ind.s2_2021${mmm}.nc
file2=$dir/AVE_2021.Ind.s1_2021${mmm}.nc
fileout=$dir/Diff_2021.Ind.s2_s1_2021${mmm}.nc


ncdiff $file1 $file2 $fileout




done
