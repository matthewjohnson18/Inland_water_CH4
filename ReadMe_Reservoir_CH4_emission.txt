README: Results produced for the manuscript "Future methane emission from lakes and reservoirs"

File location: https://github.com/matthewjohnson18/Inland_water_CH4/

=========================================================================
Describes details of how to run the scripts which produced the results for the manuscript "Future methane emission from lakes and reservoirs"
Written: July 15, 2024
Written by Matthew Johnson and David Bastviken
Email for questions: matthew.s.johnson@nasa.gov
=========================================================================

All scripts were written and run in MATLAB 2019b.
All gridded input and output at 0.25 x 0.25 degrees (720 lat, 1440 lon)
This README provides details for the input/output for scripts run to produce baseline and an example future climate scenario (SSP5, 2080-2099) global gridded reservoir CH4 emissions

Raw reservoir CH4 flux data set (Supp_Info S01 - Reservoir Flux Data Set.xlsx) provided.

Example output:
For those that do not have access to MATLAB, we have also uploaded excel files with results from the scripts:
Baseline_Annual_Reservoir_Methane_Emissions_D+E.xlsx: annual baseline diffusion+ebullition gridded reservoir CH4 emission totals. Variables include:
- Reservoir type 1 (Boreal) CH4 emissions (g m-2 yr-1)
- Reservoir type 2 (Temperate) CH4 emissions (g m-2 yr-1)
- Reservoir type 3 (Tropical) CH4 emissions (g m-2 yr-1)

A file for the lat and lon for each grid has also been provided (lat_lon.xlsx)

=========================================================================

Details of script: "Review_Baseline_Reservoir_Global_Emission_v02.m"
=========================================================================

This script produces the global daily CH4 emissions from diffusion and ebullition from reservoirs for baseline simulations

"Review_Baseline_Reservoir_Global_Emission_v02.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of reservoir climate zones
2. Boreal_Temp_Trop_Baseline_emiss_rates_v02_THETA_TEST.mat: Boreal, Temperate, and Tropical reservoir diffusion+ebullition emission rates
4. area_720x1440_JOY.nc: global gridded surface area
5. Lake_Type_new.mat: gridded reservoir type global distribution
6. reservoir_HydroLakes_GRanD_GOOD_percent_025_1440X720_v2.nc: GLWD, GRanD, and GOOD2 gridded reservoir areas 
7. ftv04_season_length_clim_025deg_50N_1998-2007.nc: gridded climatological ftv04 emission season lengths for reservoir emissions
8. ftv04_thaw_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 thaw season length
9. ftv04_freeze_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 freeze season length
10. lake_LIP_thaw_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP thaw season length
11. lake_LIP_freeze_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP freeze season length

Important output variables:
Daily reservoir type gridded daily diffusion+ebullition emissions (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Reserv_Type1_g_m2_day (Boreal)
- CH4_emiss_Reserv_Type2_g_m2_day (Temperate)
- CH4_emiss_Reserv_Type3_g_m2_dayy (Tropical/subtropical)

=========================================================================

Details of script: "Review_Future_SSP5_Reservoir_Glob_Diff_Ebul_Emis_v05_2080_2099.m"
=========================================================================

This script produces the global daily CH4 emissions from diffusion and ebullition from reservoirs for the SSP5 climate scenario between 2080-2099
"Review_Future_SSP5_Reservoir_Glob_Diff_Ebul_Emis_v05_2080_2099.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of reservoir climate zones
12. Boreal_Temp_Trop_SSP5_emiss_rates_v03_2080_2099_THETA_TEST.mat: Boreal, Temperate, and Tropical reservoir diffusion+ebullition emission rates for the SSP5 climate scenario between 2080-2099
4. area_720x1440_JOY.nc: global gridded surface area
5. Lake_Type_new.mat: gridded reservoir type global distribution
6. reservoir_HydroLakes_GRanD_GOOD_percent_025_1440X720_v2.nc: GLWD, GRanD, and GOOD2 gridded reservoir areas 
13. Season_Lengths_Future_v03_2080_2099.mat: Future reservoir emission season length for the time period between 2080-2099.

Important output variables:
Daily reservoir type gridded daily diffusion+ebullition emissions (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Reserv_Type1_g_m2_day (Boreal)
- CH4_emiss_Reserv_Type2_g_m2_day (Temperate)
- CH4_emiss_Reserv_Type3_g_m2_dayy (Tropical/subtropical)

=========================================================================
