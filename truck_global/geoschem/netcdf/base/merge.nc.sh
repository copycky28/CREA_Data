#!/bin/sh -f



### convert units, convert rate from ppb to ug/m3:NO2: 1.88, O3: 1.96

cp GEOSChem.AnnMean.Sfc.NO2_O3.ppb.Base.nc GEOSChem.AnnMean.Sfc.NO2_O3.ug.Base.nc

ncap2 -s 'NO2=NO2*1.88' -O  GEOSChem.AnnMean.Sfc.NO2_O3.ug.Base.nc GEOSChem.AnnMean.Sfc.NO2_O3.ug.Base.nc

ncap2 -s 'O3=O3*1.96' -O  GEOSChem.AnnMean.Sfc.NO2_O3.ug.Base.nc GEOSChem.AnnMean.Sfc.NO2_O3.ug.Base.nc
### merge files

cp GEOSChem.AnnMean.Sfc.NO2_O3.ug.Base.nc GEOSChem.AnnMean.Sfc.NO2_O3_PM25.ug.Base.nc   # First, create a copy of file1.nc
ncks -A GEOSChem.AnnMean.Sfc.PM25.Base.nc GEOSChem.AnnMean.Sfc.NO2_O3_PM25.ug.Base.nc   # Append all variables from file2.nc into merged.nc

