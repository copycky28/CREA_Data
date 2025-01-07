#!/bin/sh -f


dir=/scratch/project_2000221/copycky/data/combine_cctm/ind_2021_new

for scen in s1 s2
do
for mmm in 04 07 10 12
do
file_in=$dir/COMBINE_ACONC_cb_2021.Ind.${scen}_2021${mmm}.nc
file_out=$dir/AVE_2021.Ind.${scen}_2021${mmm}.nc


ncra -O $file_in $file_out

done
done




