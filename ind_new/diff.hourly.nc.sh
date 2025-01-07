#!/bin/sh -f

for mmm in 12
do

file1=COMBINE_ACONC_cb_2021.Ind.s2_2021${mmm}.nc
file2=COMBINE_ACONC_cb_2021.Ind.s1_2021${mmm}.nc
fileout=Diff_ACONC_Ind.s2_s1_2021${mmm}.nc


ncdiff $file1 $file2 $fileout




done
