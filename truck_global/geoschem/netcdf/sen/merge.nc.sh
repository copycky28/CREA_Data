#!/bin/sh -f

for reg in AF_OC AS AS_OC_ME_AF_EAS AS_OC AS_OC_SA_ME_AF_EAS EU ME_AF NA_MX NA SA
#AS_OC AS_OC_ME_AF_EAS AS AF_OC AS_OC_SA_ME_AF_EAS NA
do

### convert units, convert rate from ppb to ug/m3:NO2: 1.88, O3: 1.96

cp GEOSChem.AnnMean.Sfc.NO2_O3.ppb.Truck_NOx_$reg.nc GEOSChem.AnnMean.Sfc.NO2_O3.ug.Truck_NOx_$reg.nc

ncap2 -s 'NO2=NO2*1.88' -O  GEOSChem.AnnMean.Sfc.NO2_O3.ug.Truck_NOx_$reg.nc GEOSChem.AnnMean.Sfc.NO2_O3.ug.Truck_NOx_$reg.nc

ncap2 -s 'O3=O3*1.96' -O  GEOSChem.AnnMean.Sfc.NO2_O3.ug.Truck_NOx_$reg.nc GEOSChem.AnnMean.Sfc.NO2_O3.ug.Truck_NOx_$reg.nc
### merge files

cp GEOSChem.AnnMean.Sfc.NO2_O3.ug.Truck_NOx_$reg.nc GEOSChem.AnnMean.Sfc.NO2_O3_PM25.ug.Truck_NOx_$reg.nc   # First, create a copy of file1.nc
ncks -A GEOSChem.AnnMean.Sfc.PM25.Truck_NOx_$reg.nc GEOSChem.AnnMean.Sfc.NO2_O3_PM25.ug.Truck_NOx_$reg.nc   # Append all variables from file2.nc into merged.nc




done
