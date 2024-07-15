README: Results produced for the manuscript "Future methane emission from lakes and reservoirs"

File location: https://github.com/matthewjohnson18/Inland_water_CH4/

=========================================================================
Describes details of how to run the scripts which produced the results for the manuscript "Future methane emission from lakes and reservoirs"
Written: July 15, 2024
Written by Matthew Johnson
matthew.s.johnson@nasa.gov
=========================================================================

All scripts were written and run in MATLAB 2019b.
All gridded input and output at 0.25 x 0.25 degrees (720 lat, 1440 lon)
This README provides details for the input/output for scripts run to produce baseline and an example future climate scenario (SSP5, 2080-2099) global gridded lake CH4 emissions

For those reviewers that do not have access to MATLAB, we have also uploaded excel files with results from the scripts to help review the codes:
Baseline_Annual_Lake_Methane_Emissions_D+E.xlsx: annual baseline diffusion+ebullition gridded lake CH4 emission totals. Variables include:
- Lake type 1 (thermokarst) CH4 emissions (g m-2 yr-1)
- Lake type 2 (glacial/postglacial) CH4 emissions (g m-2 yr-1)
- Lake type 3 (peat pond) CH4 emissions (g m-2 yr-1)
- Lake type 4 (organic) CH4 emissions (g m-2 yr-1)
- Lake type 5 (other boreal) CH4 emissions (g m-2 yr-1)
- Lake type 6 (temperate) CH4 emissions (g m-2 yr-1)
- Lake type 7 (tropical/subtropical) CH4 emissions (g m-2 yr-1)

Baseline_Annual_Lake_Methane_Emissions_Fall_Turnover.xlsx: annual baseline fall turnover gridded lake CH4 emission totals. Variables include:
- Lake type 1 (thermokarst) CH4 emissions (g m-2 yr-1)
- Lake type 2 (glacial/postglacial) CH4 emissions (g m-2 yr-1)
- Lake type 3 (peat pond) CH4 emissions (g m-2 yr-1)
- Lake type 4 (organic) CH4 emissions (g m-2 yr-1)
- Lake type 5 (other boreal) CH4 emissions (g m-2 yr-1)
- Lake type 6 (temperate) CH4 emissions (g m-2 yr-1)
- Lake type 7 (tropical/subtropical) CH4 emissions (g m-2 yr-1)

Baseline_Annual_Lake_Methane_Emissions_Ice_out.xlsx: annual baseline ice out and spring lake turnover gridded lake CH4 emission totals. Variables include:
- Lake type 1 (thermokarst) CH4 emissions (g m-2 yr-1)
- Lake type 2 (glacial/postglacial) CH4 emissions (g m-2 yr-1)
- Lake type 3 (peat pond) CH4 emissions (g m-2 yr-1)
- Lake type 4 (organic) CH4 emissions (g m-2 yr-1)
- Lake type 5 (other boreal) CH4 emissions (g m-2 yr-1)
- Lake type 6 (temperate) CH4 emissions (g m-2 yr-1)
- Lake type 7 (tropical/subtropical) CH4 emissions (g m-2 yr-1)

A file for the lat and lon for each grid has also been provided (lat_lon.xlsx)

=========================================================================

Details of script: "Review_Baseline_Lake_Diff_Ebul.m"
=========================================================================

This script produces the global daily CH4 emissions from diffusion and ebullition from lakes for baseline simulations

"Review_Baseline_Lake_Diff_Ebul.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of lake climate zones
2. Boreal_Temp_Trop_Baseline_emiss_rates_v04_All_new_data_THETA_TEST.mat: Boreal, Temperate, and Tropical lake diffusion+ebullition emission rates
3. Thermokarst_Baseline_emiss_rates_v03_All_new_data_THETA_TEST.mat: Thermokarst lake diffusion+ebullition emission rates
4. Glacial_postglacial_Baseline_emiss_rates_v02_THETA_TEST.mat: Glacial and post-glacial lake diffusion+ebullition emission rates
5. Peat_Pond_Baseline_emiss_rates_v02_THETA_TEST.mat: Peat pond diffusion+ebullition emission rates
6. area_720x1440_JOY.nc: global gridded surface area
7. Lake_Type_new.mat: gridded lake type global distribution
8. lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies <5000 km2 
9. lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.02-0.1 km2
10. lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.1-1.0 km2
11. lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 1.0-10.0 km2
12. lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 5000-10000 km2
13. lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 10000-100000 km2
14. lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies >100000 km2
15. ftv04_season_length_clim_025deg_50N_1998-2007.nc: gridded climatological ftv04 emission season lengths for lake emissions
16. ftv04_thaw_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 thaw season length
17. ftv04_freeze_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 freeze season length
18. lake_LIP_thaw_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP thaw season length
19. lake_LIP_freeze_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP freeze season length

Important output variables:
Daily lake type gridded daily diffusion+ebullition emissions (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Lake_Type1_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type2_g_m2_day (Glacial/postglacial)
- CH4_emiss_Lake_Type3_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type4_g_m2_day (Peat pond)
- CH4_emiss_Lake_Type5_g_m2_day (Organic)
- CH4_emiss_Lake_Type6_g_m2_day (Temperate)
- CH4_emiss_Lake_Type7_g_m2_day (Tropical)

=========================================================================

Details of script: "Review_Baseline_Lake_Fall_flux.m"
=========================================================================

This script produces the global daily CH4 emissions from fall lake turnover for baseline simulations

"Review_Baseline_Lake_Fall_flux.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of lake climate zones
20. Boreal_Temp_Trop_Baseline_emiss_rates_v02_FallTurnover_5degrees.mat: Boreal, Temperate, and Tropical fall turnover lake emission rates
21. Wik_Thermokarst_emission_rates_v01_Fall_Turnover_flux.mat: Thermokarst fall turnover lake emission rates
22. Wik_Glacial_postglacial_emission_rates_v01_Fall_Turnover_flux.mat: Glacial and postglacial fall turnover lake emission rates
23. Wik_PeatPond_emission_rates_v01_Fall_Turnover_flux.mat: Peat pond fall turnover lake emission rates
6. area_720x1440_JOY.nc: global gridded surface area
7. Lake_Type_new.mat: gridded lake type global distribution
8. lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies <5000 km2 
9. lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.02-0.1 km2
10. lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.1-1.0 km2
11. lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 1.0-10.0 km2
12. lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 5000-10000 km2
13. lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 10000-100000 km2
14. lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies >100000 km2
15. ftv04_season_length_clim_025deg_50N_1998-2007.nc: gridded climatological ftv04 emission season lengths for lake emissions
16. ftv04_thaw_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 thaw season length
17. ftv04_freeze_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 freeze season length
18. lake_LIP_thaw_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP thaw season length
19. lake_LIP_freeze_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP freeze season length

Important output variables:
Daily lake type gridded daily fall lake turnover emissions (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Lake_Type1_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type2_g_m2_day (Glacial/postglacial)
- CH4_emiss_Lake_Type3_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type4_g_m2_day (Peat pond)
- CH4_emiss_Lake_Type5_g_m2_day (Organic)
- CH4_emiss_Lake_Type6_g_m2_day (Temperate)
- CH4_emiss_Lake_Type7_g_m2_day (Tropical)

=========================================================================

Details of script: "Review_Baseline_Lake_Ice_out.m"
=========================================================================

This script produces the global daily CH4 emissions from spring thaw and lake turnover for baseline simulations

"Review_Baseline_Lake_Ice_out.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of lake climate zones
20. Boreal_Temp_Trop_Baseline_emiss_rates_v02_FallTurnover_5degrees.mat: Boreal, Temperate, and Tropical fall turnover lake emission rates
21. Wik_Thermokarst_emission_rates_v01_Fall_Turnover_flux.mat: Thermokarst fall turnover lake emission rates
22. Wik_Glacial_postglacial_emission_rates_v01_Fall_Turnover_flux.mat: Glacial and postglacial fall turnover lake emission rates
23. Wik_PeatPond_emission_rates_v01_Fall_Turnover_flux.mat: Peat pond fall turnover lake emission rates
6. area_720x1440_JOY.nc: global gridded surface area
7. Lake_Type_new.mat: gridded lake type global distribution
8. lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies <5000 km2 
9. lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.02-0.1 km2
10. lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.1-1.0 km2
11. lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 1.0-10.0 km2
12. lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 5000-10000 km2
13. lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 10000-100000 km2
14. lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies >100000 km2
15. ftv04_season_length_clim_025deg_50N_1998-2007.nc: gridded climatological ftv04 emission season lengths for lake emissions
16. ftv04_thaw_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 thaw season length
17. ftv04_freeze_date_clim_025deg_10N_1998-2007.nc: gridded climatological ftv04 freeze season length
18. lake_LIP_thaw_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP thaw season length
19. lake_LIP_freeze_date_clim_025deg_10N_2003-2015.nc: gridded climatological LIP freeze season length

Important output variables:
Daily lake type gridded daily spring thaw and lake turnover emissions (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Lake_Type1_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type2_g_m2_day (Glacial/postglacial)
- CH4_emiss_Lake_Type3_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type4_g_m2_day (Peat pond)
- CH4_emiss_Lake_Type5_g_m2_day (Organic)
- CH4_emiss_Lake_Type6_g_m2_day (Temperate)
- CH4_emiss_Lake_Type7_g_m2_day (Tropical)

=========================================================================

Details of script: "Review_FUTURE_LAKE_Emiss_SSP5_v09_Diff_Ebul_2080_2099_THETA_new.m"
=========================================================================

This script produces the global daily CH4 emissions from diffusion and ebullition from lakes for the SSP5 climate scenario between 2080-2099
"Review_FUTURE_LAKE_Emiss_SSP5_v09_Diff_Ebul_2080_2099_THETA_new.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of lake climate zones
24. Boreal_Temp_Trop_SSP5_emiss_rates_v06_2080_2099_THETA_TEST.mat: Boreal, Temperate, and Tropical lake diffusion+ebullition emission rates for the SSP5 climate scenario between 2080-2099
25. Thermokarst_SSP5_emiss_rates_v05_2080_2099_THETA_TEST.mat: Thermokarst lake diffusion+ebullition emission rates for the SSP5 climate scenario between 2080-2099
26. Glacial_postglacial_SSP5_emiss_rates_v05_2080_2099_THETA_TEST.mat: Glacial and post-glacial lake diffusion+ebullition emission rates for the SSP5 climate scenario between 2080-2099
27. Peat_Pond_SSP5_emiss_rates_v05_2080_2099_THETA_TEST.mat: Peat pond diffusion+ebullition emission rates for the SSP5 climate scenario between 2080-2099
6. area_720x1440_JOY.nc: global gridded surface area
7. Lake_Type_new.mat: gridded lake type global distribution
8. lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies <5000 km2 
9. lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.02-0.1 km2
10. lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.1-1.0 km2
11. lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 1.0-10.0 km2
12. lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 5000-10000 km2
13. lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 10000-100000 km2
14. lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies >100000 km2
28. Season_Lengths_Future_v03_2080_2099.mat: Future lake emission season length for the time period between 2080-2099.

Important output variables:
Daily lake type gridded daily diffusion+ebullition emissions for the SSP5 climate scenario between 2080-2099 (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Lake_Type1_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type2_g_m2_day (Glacial/postglacial)
- CH4_emiss_Lake_Type3_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type4_g_m2_day (Peat pond)
- CH4_emiss_Lake_Type5_g_m2_day (Organic)
- CH4_emiss_Lake_Type6_g_m2_day (Temperate)
- CH4_emiss_Lake_Type7_g_m2_day (Tropical)

=========================================================================

Details of script: "Review_FUTURE_LAKE_Emiss_SSP5_v06_Fall_pulse_2080_2099.m"
=========================================================================

This script produces the global daily CH4 emissions from spring thaw and lake turnover for the SSP5 climate scenario between 2080-2099
"Review_FUTURE_LAKE_Emiss_SSP5_v06_Fall_pulse_2080_2099.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of lake climate zones
29. Boreal_Temp_Trop_Baseline_emiss_rates_v02_FallTurnover_7degrees.mat: Boreal, Temperate, and Tropical fall lake turnover emission rates for the SSP5 climate scenario between 2080-2099
21. Wik_Thermokarst_emission_rates_v01_Fall_Turnover_flux.mat: Thermokarst fall lake turnover turnover emission rates
22. Wik_Glacial_postglacial_emission_rates_v01_Fall_Turnover_flux.mat: Glacial and postglacial fall lake turnover  emission rates
23. Wik_PeatPond_emission_rates_v01_Fall_Turnover_flux.mat: Peat pond fall lake turnover emission rates
6. area_720x1440_JOY.nc: global gridded surface area
7. Lake_Type_new.mat: gridded lake type global distribution
8. lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies <5000 km2 
9. lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.02-0.1 km2
10. lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.1-1.0 km2
11. lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 1.0-10.0 km2
12. lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 5000-10000 km2
13. lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 10000-100000 km2
14. lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies >100000 km2
28. Season_Lengths_Future_v03_2080_2099.mat: Future lake emission season length for the time period between 2080-2099.

Important output variables:
Daily lake type gridded daily fall lake turnover for the SSP5 climate scenario between 2080-2099 (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Lake_Type1_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type2_g_m2_day (Glacial/postglacial)
- CH4_emiss_Lake_Type3_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type4_g_m2_day (Peat pond)
- CH4_emiss_Lake_Type5_g_m2_day (Organic)
- CH4_emiss_Lake_Type6_g_m2_day (Temperate)
- CH4_emiss_Lake_Type7_g_m2_day (Tropical)

=========================================================================

Details of script: "Review_FUTURE_LAKE_Emiss_SSP5_v06_Ice_out_2080_2099.m"
=========================================================================

This script produces the global daily CH4 emissions from spring thaw and lake turnover for the SSP5 climate scenario between 2080-2099

"Review_FUTURE_LAKE_Emiss_SSP5_v06_Ice_out_2080_2099.m" details:

Input files: 
1. LAND_Latitude_Zones_MERRA2_Derived_v02.mat: global distribution of lake climate zones
29. Boreal_Temp_Trop_Baseline_emiss_rates_v02_FallTurnover_7degrees.mat: Boreal, Temperate, and Tropical spring thaw and lake turnover emission rates for the SSP5 climate scenario between 2080-2099
21. Wik_Thermokarst_emission_rates_v01_Fall_Turnover_flux.mat: Thermokarst spring thaw and lake turnover emission rates
22. Wik_Glacial_postglacial_emission_rates_v01_Fall_Turnover_flux.mat: Glacial and postglacial fspring thaw and lake turnover emission rates
23. Wik_PeatPond_emission_rates_v01_Fall_Turnover_flux.mat: Peat pond spring thaw and lake turnover emission rates
6. area_720x1440_JOY.nc: global gridded surface area
7. Lake_Type_new.mat: gridded lake type global distribution
8. lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies <5000 km2 
9. lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.02-0.1 km2
10. lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 0.1-1.0 km2
11. lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 1.0-10.0 km2
12. lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 5000-10000 km2
13. lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies 10000-100000 km2
14. lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc: HydroLAKES and CCI-IW gridded lake areas for water bodies >100000 km2
28. Season_Lengths_Future_v03_2080_2099.mat: Future lake emission season length for the time period between 2080-2099.

Important output variables:
Daily lake type gridded daily spring thaw and lake turnover emissions for the SSP5 climate scenario between 2080-2099 (g m-2 day-1), 365 days, 720 lat, 1440 lon: 
- CH4_emiss_Lake_Type1_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type2_g_m2_day (Glacial/postglacial)
- CH4_emiss_Lake_Type3_g_m2_day (Thermokarst)
- CH4_emiss_Lake_Type4_g_m2_day (Peat pond)
- CH4_emiss_Lake_Type5_g_m2_day (Organic)
- CH4_emiss_Lake_Type6_g_m2_day (Temperate)
- CH4_emiss_Lake_Type7_g_m2_day (Tropical)

=========================================================================
