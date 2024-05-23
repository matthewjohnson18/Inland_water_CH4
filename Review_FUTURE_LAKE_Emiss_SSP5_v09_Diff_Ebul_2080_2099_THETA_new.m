%%%%%%% Future Lake Emissions Calculation %%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;

load LAND_Latitude_Zones_MERRA2_Derived_v02.mat;

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\scripts\Future_Lake_emissions\Emission_Rates\;

load Boreal_Temp_Trop_SSP5_emiss_rates_v06_2080_2099_THETA_TEST.mat;

SSP5_BOREAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d = UPDATED_BOREAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d;
SSP5_BOREAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d = UPDATED_BOREAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;
clear UPDATED_BOREAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d UPDATED_BOREAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

Boreal_rate_interp = (SSP5_BOREAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d + SSP5_BOREAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d)./1000;

SSP5_TEMPERATE_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d = UPDATED_TEMPERATE_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d;
SSP5_TEMPERATE_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d = UPDATED_TEMPERATE_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d;
SSP5_TEMPERATE_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d = UPDATED_TEMPERATE_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d;
SSP5_TEMPERATE_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d = UPDATED_TEMPERATE_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d;
clear UPDATED_TEMPERATE_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d UPDATED_TEMPERATE_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d UPDATED_TEMPERATE_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d UPDATED_TEMPERATE_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d;

Temperate_north_rate_interp = (SSP5_TEMPERATE_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d + SSP5_TEMPERATE_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d)./1000;
Temperate_south_rate_interp = (SSP5_TEMPERATE_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d + SSP5_TEMPERATE_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d)./1000;

SSP5_TROPICAL_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d = UPDATED_TROPICAL_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d;
SSP5_TROPICAL_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d = UPDATED_TROPICAL_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d;
SSP5_TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d = UPDATED_TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d;
SSP5_TROPICAL_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d = UPDATED_TROPICAL_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d;
clear UPDATED_TROPICAL_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d UPDATED_TROPICAL_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d UPDATED_TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d UPDATED_TROPICAL_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d;

Tropical_north_rate_interp = (SSP5_TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d+ SSP5_TROPICAL_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d)./1000;
Tropical_south_rate_interp = (SSP5_TROPICAL_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d + SSP5_TROPICAL_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d)./1000;

clear SSP5_BOREAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d SSP5_BOREAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d SSP5_TEMPERATE_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d SSP5_TEMPERATE_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d ...
    SSP5_TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d SSP5_TEMPERATE_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d SSP5_TROPICAL_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d ...
    SSP5_TROPICAL_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d SSP5_TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d SSP5_TROPICAL_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d;

load Glacial_postglacial_SSP5_emiss_rates_v05_2080_2099_THETA_TEST.mat;

SSP5_GLACIAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d = UPDATED_GLACIAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d;
SSP5_GLACIAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d = UPDATED_GLACIAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;
clear UPDATED_GLACIAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d UPDATED_GLACIAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

Glacial_rate_interp = (SSP5_GLACIAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d + SSP5_GLACIAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d)./1000;

clear SSP5_GLACIAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d SSP5_GLACIAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

load Peat_Pond_SSP5_emiss_rates_v05_2080_2099_THETA_TEST.mat;

SSP5_PEAT_POND_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d = UPDATED_PEAT_POND_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d;
SSP5_PEAT_POND_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d = UPDATED_PEAT_POND_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;
clear UPDATED_PEAT_POND_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d UPDATED_PEAT_POND_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

Peat_rate_interp = (SSP5_PEAT_POND_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d + SSP5_PEAT_POND_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d)./1000;


clear SSP5_PEAT_POND_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d SSP5_PEAT_POND_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

load Thermokarst_SSP5_emiss_rates_v05_2080_2099_THETA_TEST.mat;

SSP5_THERMOKARST_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d = UPDATED_THERMOKARST_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d;
SSP5_THERMOKARST_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d = UPDATED_THERMOKARST_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;
clear UPDATED_THERMOKARST_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d UPDATED_THERMOKARST_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

Thermo_rate_interp = (SSP5_THERMOKARST_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d + SSP5_THERMOKARST_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d)./1000;

clear SSP5_THERMOKARST_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d SSP5_THERMOKARST_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d;

hold = Boreal_rate_interp;
clear Boreal_rate_interp;
Boreal_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Boreal_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Temperate_north_rate_interp;
clear Temperate_north_rate_interp;
Temperate_north_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Temperate_north_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Temperate_south_rate_interp;
clear Temperate_south_rate_interp;
Temperate_south_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Temperate_south_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Tropical_north_rate_interp;
clear Tropical_north_rate_interp;
Tropical_north_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Tropical_north_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Tropical_south_rate_interp;
clear Tropical_south_rate_interp;
Tropical_south_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Tropical_south_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Glacial_rate_interp;
clear Glacial_rate_interp;
Glacial_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Glacial_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Peat_rate_interp;
clear Peat_rate_interp;
Peat_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Peat_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

hold = Thermo_rate_interp;
clear Thermo_rate_interp;
Thermo_rate_interp = NaN(365,720,1440);
for j = 1:720;
    for k = 1:1440;
        Thermo_rate_interp(:,j,k) = hold(:,721-j,k);
    end;
end;

Organic_rate_interp = Peat_rate_interp;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\scripts\;

filename = 'area_720x1440_JOY.nc';
fileinfo = ncinfo(filename);

area_m2 = ncread(filename, 'area').*1E6;
area_check = nansum(nansum(area_m2));

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\LAKES_HydroLakes_CCI_New\Data_Final\;

load Lake_Type_new.mat;

CH4_EM_Lake_Type = flipud(Lake_Type);

filename = 'lake_HydroLakes_CCI_5000km_percent_025_1440X720_v1.nc'; %ALL
fileinfo = ncinfo(filename);

fract_lake = ncread(filename, 'gl_lakes_fr__lt5000_025ddf'); % lon x lat x time
lat = ncread(filename, 'lat');
lon = ncread(filename, 'lon');
lat_save = lat;
lon_save = lon;

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lat(j,k) = lat(j,1);
        Lon(j,k) = lon(k,1);
        Lake_Fraction(j,k) = fract_lake(k,j)./100;
        Lake_Area_m2(j,k) = Lake_Fraction(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake;

LAKE_Global_Area_km2_5000km2 = nansum(nansum(Lake_Area_m2)).*(10^-6); 

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\LAKES_HydroLakes_CCI_New\Size_class_lake_data\;

filename_002_01k = 'lake_HydroLAKES_CCI_002-01_percent_025_1440X720_v2.nc'; %ALL
fileinfo_002_01k = ncinfo(filename_002_01k);

fract_lake_002_01k = ncread(filename_002_01k, 'newlakes_ltp1_pct'); % lon x lat x time

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lake_Fraction_002_01k(j,k) = fract_lake_002_01k(k,j)./100;
        Lake_Area_m2_002_01(j,k) = Lake_Fraction_002_01k(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake_002_01k;

filename_01_1k = 'lake_HydroLAKES_CCI_01-1_percent_025_1440X720_v2.nc'; %ALL
fileinfo_01_1k = ncinfo(filename_01_1k);

fract_lake_01_1k = ncread(filename_01_1k, 'newlakes_p1_1_pct'); % lon x lat x time

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lake_Fraction_01_1k(j,k) = fract_lake_01_1k(k,j)./100;
        Lake_Area_m2_01_1(j,k) = Lake_Fraction_01_1k(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake_01_1k;

filename_1_10k = 'lake_HydroLAKES_CCI_1-10_percent_025_1440X720_v2.nc'; %ALL
fileinfo_1_10k = ncinfo(filename_1_10k);

fract_lake_1_10k = ncread(filename_1_10k, 'newlakes_1_10_pct'); % lon x lat x time

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lake_Fraction_1_10k(j,k) = fract_lake_1_10k(k,j)./100;
        Lake_Area_m2_1_10(j,k) = Lake_Fraction_1_10k(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake_1_10k;

filename_5_10k = 'lake_HydroLakes_CCI_5k-10k_percent_025_1440X720_v1.nc'; %ALL
fileinfo_5_10k = ncinfo(filename_5_10k);

fract_lake_5_10k = ncread(filename_5_10k, 'newlakes_5k_10k_pct'); % lon x lat x time

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lake_Fraction_5_10k(j,k) = fract_lake_5_10k(k,j)./100;
        Lake_Area_m2_5_10k(j,k) = Lake_Fraction_5_10k(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake_5_10k;

LAKE_Global_Area_km2_5_10k = nansum(nansum(Lake_Area_m2_5_10k)).*(10^-6); 

filename_10_100k = 'lake_HydroLakes_CCI_10k-100k_percent_025_1440X720_v1.nc'; %ALL
fileinfo_10_100k = ncinfo(filename_10_100k);

fract_lake_10_100k = ncread(filename_10_100k, 'newlakes_10k_100k_pct'); % lon x lat x time

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lake_Fraction_10_100k(j,k) = fract_lake_10_100k(k,j)./100;
        Lake_Area_m2_10_100k(j,k) = Lake_Fraction_10_100k(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake_10_100k;

LAKE_Global_Area_km2_10_100k = nansum(nansum(Lake_Area_m2_10_100k)).*(10^-6); 

filename_100k_greater = 'lake_HydroLakes_CCI_gt100k_percent_025_1440X720_v1.nc'; %ALL
fileinfo_100k_greater = ncinfo(filename_100k_greater);

fract_lake_100k_greater = ncread(filename_100k_greater, 'newlakes_gt100k_pct'); % lon x lat x time

for j = 1:size(lat,1);
    for k = 1:size(lon,1);
        Lake_Fraction_100k_greater(j,k) = fract_lake_100k_greater(k,j)./100;
        Lake_Area_m2_100k_greater(j,k) = Lake_Fraction_100k_greater(j,k).*area_m2(j,k);
    end;
end;

clear fract_lake_100k_greater;

LAKE_Global_Area_km2_100k_greater = nansum(nansum(Lake_Area_m2_100k_greater)).*(10^-6); 

Lake_Area_m2_5000k = Lake_Area_m2;
Lake_Fraction_5000k = Lake_Fraction;

clear Lake_Area_m2;

Scaler = 0.1; % 10% of large lakes emit methane;

Lake_Area_m2 = (Lake_Area_m2_5000k-Lake_Area_m2_002_01)+(Lake_Area_m2_5_10k.*Scaler)+(Lake_Area_m2_10_100k.*Scaler)+(Lake_Area_m2_100k_greater.*Scaler);
Lake_Fraction = (Lake_Fraction_5000k-Lake_Fraction_002_01k)+(Lake_Fraction_5_10k.*Scaler)+(Lake_Fraction_10_100k.*Scaler)+(Lake_Fraction_100k_greater.*Scaler); 

Lake_Area_m2_small_new_Type1 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.84;
Lake_Area_m2_small_new_Type2 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.24;
Lake_Area_m2_small_new_Type3 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.84;
Lake_Area_m2_small_new_Type4 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.84;
Lake_Area_m2_small_new_Type5 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.54;
Lake_Area_m2_small_new_Type6 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.54;
Lake_Area_m2_small_new_Type7 = (Lake_Area_m2_01_1+Lake_Area_m2_1_10).*0.54;

Large_lake_mask = (Lake_Fraction_5_10k.*Scaler)+(Lake_Fraction_10_100k.*Scaler)+(Lake_Fraction_100k_greater.*Scaler);

LAKE_Global_Area_km2_ALL = nansum(nansum(Lake_Area_m2)).*(10^-6); 

clear Lake_Area_m2_01_1 Lake_Area_m2_1_10 Lake_Fraction_01_1k Lake_Fraction_1_10k Lake_Area_m2_5000k Lake_Fraction_5000k Lake_Area_m2_5_10k Lake_Fraction_5_10k Lake_Area_m2_10_100k Lake_Fraction_10_100k Lake_Area_m2_100k_greater Lake_Fraction_100k_greater;

J_GLOB = size(Lat,1);
K_GLOB = size(Lat,2);

LAND_ZONE_SEPERATE_025_degree = flipud(LAND_ZONE_SEPERATE_025_degree);

Lake_Type_TYPE1_Area = NaN(J_GLOB,K_GLOB);
Lake_Type_TYPE2_Area = NaN(J_GLOB,K_GLOB);
Lake_Type_TYPE3_Area = NaN(J_GLOB,K_GLOB);
Lake_Type_TYPE4_Area = NaN(J_GLOB,K_GLOB);
Lake_Type_TYPE5_Area = NaN(J_GLOB,K_GLOB);
Lake_Type_TYPE6_Area = NaN(J_GLOB,K_GLOB);
Lake_Type_TYPE7_Area = NaN(J_GLOB,K_GLOB);
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( (CH4_EM_Lake_Type(j,k) == 1) && (Lake_Area_m2(j,k) > 0.0) )
            Lake_Type_TYPE1_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type1(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 2) && (Lake_Area_m2(j,k) > 0.0) )
            Lake_Type_TYPE2_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type2(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 3) && (Lake_Area_m2(j,k) > 0.0) )
            Lake_Type_TYPE3_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type3(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 4) && (Lake_Area_m2(j,k) > 0.0) && (LAND_ZONE_SEPERATE_025_degree(j,k)==1.0) )
            Lake_Type_TYPE4_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type4(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 4) && (Lake_Area_m2(j,k) > 0.0) && (LAND_ZONE_SEPERATE_025_degree(j,k)==2.0) )
            Lake_Type_TYPE6_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type6(j,k);            
        end;    
        if( (CH4_EM_Lake_Type(j,k) == 4) && (Lake_Area_m2(j,k) > 0.0) && (LAND_ZONE_SEPERATE_025_degree(j,k)==3.0) )
            Lake_Type_TYPE7_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type7(j,k);            
        end;    
        if( (CH4_EM_Lake_Type(j,k) == 5) && (Lake_Area_m2(j,k) > 0.0) && (LAND_ZONE_SEPERATE_025_degree(j,k)==1.0) )
            Lake_Type_TYPE5_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type5(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 5) && (Lake_Area_m2(j,k) > 0.0) && (LAND_ZONE_SEPERATE_025_degree(j,k)==2.0) )
            Lake_Type_TYPE6_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type6(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 5) && (Lake_Area_m2(j,k) > 0.0) && (LAND_ZONE_SEPERATE_025_degree(j,k)==3.0) )
            Lake_Type_TYPE7_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type7(j,k);
        end;
        if( isnan(CH4_EM_Lake_Type(j,k)) && (Lake_Area_m2(j,k) > 0.0) && Lat(j,k)>=50 )
            Lake_Type_TYPE5_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type5(j,k);
        end;
        if( isnan(CH4_EM_Lake_Type(j,k)) && (Lake_Area_m2(j,k) > 0.0) && Lat(j,k)<50 )
            Lake_Type_TYPE6_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type6(j,k);
        end;
        if( ~isnan(CH4_EM_Lake_Type(j,k)) && (isnan(Lake_Type_TYPE1_Area(j,k))) && (isnan(Lake_Type_TYPE2_Area(j,k))) && (isnan(Lake_Type_TYPE3_Area(j,k))) && (isnan(Lake_Type_TYPE4_Area(j,k))) && (isnan(Lake_Type_TYPE5_Area(j,k))) && (isnan(Lake_Type_TYPE6_Area(j,k))) && (isnan(Lake_Type_TYPE7_Area(j,k))) && (Lake_Area_m2(j,k) > 0.0) )
            Lake_Type_TYPE5_Area(j,k) = Lake_Area_m2(j,k)+Lake_Area_m2_small_new_Type5(j,k);
        end;
    end;
end;

clear Lake_Area_m2_small_new_Type1 Lake_Area_m2_small_new_Type2 Lake_Area_m2_small_new_Type3 Lake_Area_m2_small_new_Type4 Lake_Area_m2_small_new_Type5 Lake_Area_m2_small_new_Type6 Lake_Area_m2_small_new_Type7;

Lake_TYPE1_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE1_Area)).*(10^-6); 
Lake_TYPE2_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE2_Area)).*(10^-6);
Lake_TYPE3_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE3_Area)).*(10^-6);
Lake_TYPE4_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE4_Area)).*(10^-6);
Lake_TYPE5_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE5_Area)).*(10^-6);
Lake_TYPE6_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE6_Area)).*(10^-6);
Lake_TYPE7_Area_Global_km2 = nansum(nansum(Lake_Type_TYPE7_Area)).*(10^-6);

LAKE_Global_Area_km2_CHECK = Lake_TYPE1_Area_Global_km2+Lake_TYPE2_Area_Global_km2+Lake_TYPE3_Area_Global_km2+Lake_TYPE4_Area_Global_km2+Lake_TYPE5_Area_Global_km2+Lake_TYPE6_Area_Global_km2+Lake_TYPE7_Area_Global_km2;

Lake_Fraction_Plot(j,k) = Lake_Fraction(j,k);
Lake_Fraction_Plot(Lake_Fraction_Plot==0)=NaN;

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\scripts\Future_Lake_emissions\Emission_Rates\;

load Season_Lengths_Future_v03_2080_2099.mat;

CH4_EM_Lake_Season_GLOB_TYPE1 = NaN(J_GLOB,K_GLOB);
CH4_EM_Lake_Season_GLOB_TYPE2 = NaN(J_GLOB,K_GLOB);
CH4_EM_Lake_Season_GLOB_TYPE3 = NaN(J_GLOB,K_GLOB);
CH4_EM_Lake_Season_GLOB_TYPE4 = NaN(J_GLOB,K_GLOB);
CH4_EM_Lake_Season_GLOB_TYPE5 = NaN(J_GLOB,K_GLOB);
CH4_EM_Lake_Season_GLOB_TYPE6 = NaN(J_GLOB,K_GLOB);
CH4_EM_Lake_Season_GLOB_TYPE7 = NaN(J_GLOB,K_GLOB);
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( (CH4_EM_Lake_Type(j,k) == 1) )
            CH4_EM_Lake_Season_GLOB_TYPE1(j,k) = Lake_Season_SSP5(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 2) )
            CH4_EM_Lake_Season_GLOB_TYPE2(j,k) = Lake_Season_SSP5(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 3) )
            CH4_EM_Lake_Season_GLOB_TYPE3(j,k) = Lake_Season_SSP5(j,k);
        end;
        if( (Lake_Type_TYPE4_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE4(j,k) = Lake_Season_SSP5(j,k);
        end;
        if( (Lake_Type_TYPE5_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE5(j,k) = Lake_Season_SSP5(j,k);
        end;
        if( (Lake_Type_TYPE6_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE6(j,k) = Lake_Season_SSP5(j,k);
        end;
        if( (Lake_Type_TYPE7_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE7(j,k) = Lake_Season_SSP5(j,k);
        end;
    end;
end;

LAKE_SEASON_MEAN_TYPE1 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE1));
LAKE_SEASON_MEAN_TYPE2 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE2));
LAKE_SEASON_MEAN_TYPE3 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE3));
LAKE_SEASON_MEAN_TYPE4 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE4));
LAKE_SEASON_MEAN_TYPE5 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE5));
LAKE_SEASON_MEAN_TYPE6 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE6));
LAKE_SEASON_MEAN_TYPE7 = nanmean(nanmean(CH4_EM_Lake_Season_GLOB_TYPE7));

%%%%%%%%%%%% DAILY EMISSION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CH4_emiss_Lake_Type1_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type2_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type3_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type4_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type5_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type6_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type7_g_m2_day = zeros(365,J_GLOB,K_GLOB);
DAILY_CH4_emiss_Lake_TOTAL_g_m2_day = zeros(365,J_GLOB,K_GLOB);

Lake_Type_TYPE1_Area(isnan(Lake_Type_TYPE1_Area))=0.0;
Lake_Type_TYPE2_Area(isnan(Lake_Type_TYPE2_Area))=0.0;
Lake_Type_TYPE3_Area(isnan(Lake_Type_TYPE3_Area))=0.0;
Lake_Type_TYPE4_Area(isnan(Lake_Type_TYPE4_Area))=0.0;
Lake_Type_TYPE5_Area(isnan(Lake_Type_TYPE5_Area))=0.0;
Lake_Type_TYPE6_Area(isnan(Lake_Type_TYPE6_Area))=0.0;
Lake_Type_TYPE7_Area(isnan(Lake_Type_TYPE7_Area))=0.0;

Thaw_Date_check = Thaw_Date_SSP5;
Thaw_Date_check(Lake_Season_SSP5==365)=0.0;
Thaw_Date_check(Large_lake_mask>0.0)=0.0;
Freeze_Date_check = Freeze_Date_SSP5;
Freeze_Date_check(Lake_Season_SSP5==365)=365;
Freeze_Date_check(Freeze_Date_check==0.0)=365;

Thaw_Date_check(Thaw_Date_check<20)=1.0; 
Freeze_Date_check(Freeze_Date_check>355)=365;
Freeze_Date_check(Large_lake_mask>0.0)=365;

for h = 1:365;
    display(h)
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( h>=Thaw_Date_check(j,k) && h<=Freeze_Date_check(j,k) )
            CH4_emiss_Lake_Type1_g_m2_day(h,j,k) = (Thermo_rate_interp(h,j,k).*Lake_Type_TYPE1_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));    
            CH4_emiss_Lake_Type2_g_m2_day(h,j,k) = (Glacial_rate_interp(h,j,k).*Lake_Type_TYPE2_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));
            CH4_emiss_Lake_Type3_g_m2_day(h,j,k) = (Peat_rate_interp(h,j,k).*Lake_Type_TYPE3_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));
            CH4_emiss_Lake_Type4_g_m2_day(h,j,k) = (Organic_rate_interp(h,j,k).*Lake_Type_TYPE4_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k)); 
        if( Lake_Type_TYPE5_Area(j,k) > 0.0)
            CH4_emiss_Lake_Type5_g_m2_day(h,j,k) = Boreal_rate_interp(h,j,k).*Lake_Type_TYPE5_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE6_Area(j,k) > 0.0 && Lat(j,k)>=0)
            CH4_emiss_Lake_Type6_g_m2_day(h,j,k) = Temperate_north_rate_interp(h,j,k).*Lake_Type_TYPE6_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE6_Area(j,k) > 0.0 && Lat(j,k)<0)
            CH4_emiss_Lake_Type6_g_m2_day(h,j,k) = Temperate_south_rate_interp(h,j,k).*Lake_Type_TYPE6_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE7_Area(j,k) > 0.0 && Lat(j,k)>=0)
            CH4_emiss_Lake_Type7_g_m2_day(h,j,k) = Tropical_north_rate_interp(h,j,k).*Lake_Type_TYPE7_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE7_Area(j,k) > 0.0 && Lat(j,k)<0)
            CH4_emiss_Lake_Type7_g_m2_day(h,j,k) = Tropical_south_rate_interp(h,j,k).*Lake_Type_TYPE7_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        else
            CH4_emiss_Lake_Type5_g_m2_day(h,j,k) = Boreal_rate_interp(h,j,k).*Lake_Type_TYPE5_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        end;
        end; 
    end;
end;
end;

type1(:,:) = nansum(CH4_emiss_Lake_Type1_g_m2_day);
type1(isnan(type1))=0.0;
type2(:,:) = nansum(CH4_emiss_Lake_Type2_g_m2_day);
type2(isnan(type2))=0.0;
type3(:,:) = nansum(CH4_emiss_Lake_Type3_g_m2_day);
type3(isnan(type3))=0.0;
type4(:,:) = nansum(CH4_emiss_Lake_Type4_g_m2_day);
type4(isnan(type4))=0.0;
type5(:,:) = nansum(CH4_emiss_Lake_Type5_g_m2_day);
type5(isnan(type5))=0.0;
type6(:,:) = nansum(CH4_emiss_Lake_Type6_g_m2_day);
type6(isnan(type6))=0.0;
type7(:,:) = nansum(CH4_emiss_Lake_Type7_g_m2_day);
type7(isnan(type7))=0.0;
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        CH4_emiss_Lake_TOTAL_g_m2_yr(j,k) = type1(j,k)+type2(j,k)+type3(j,k)+type4(j,k)+type5(j,k)+type6(j,k)+type7(j,k);
    end;
end;
CH4_emiss_Lake_TOTAL_g_m2_yr(CH4_emiss_Lake_TOTAL_g_m2_yr==0)=NaN;
CH4_emiss_Lake_TOTAL_g_m2_yr_per_cell = CH4_emiss_Lake_TOTAL_g_m2_yr.*Lake_Fraction;
CH4_emiss_Lake_Type1_g_m2_yr_per_cell = type1.*Lake_Fraction;
CH4_emiss_Lake_Type1_g_m2_yr_per_cell(CH4_emiss_Lake_Type1_g_m2_yr_per_cell==0.0)=NaN;
CH4_emiss_Lake_Type2_g_m2_yr_per_cell = type2.*Lake_Fraction;
CH4_emiss_Lake_Type2_g_m2_yr_per_cell(CH4_emiss_Lake_Type2_g_m2_yr_per_cell==0.0)=NaN;
CH4_emiss_Lake_Type3_g_m2_yr_per_cell = type3.*Lake_Fraction;
CH4_emiss_Lake_Type3_g_m2_yr_per_cell(CH4_emiss_Lake_Type3_g_m2_yr_per_cell==0.0)=NaN;
CH4_emiss_Lake_Type4_g_m2_yr_per_cell = type4.*Lake_Fraction;
CH4_emiss_Lake_Type4_g_m2_yr_per_cell(CH4_emiss_Lake_Type4_g_m2_yr_per_cell==0.0)=NaN;
CH4_emiss_Lake_Type5_g_m2_yr_per_cell = type5.*Lake_Fraction;
CH4_emiss_Lake_Type5_g_m2_yr_per_cell(CH4_emiss_Lake_Type5_g_m2_yr_per_cell==0.0)=NaN;
CH4_emiss_Lake_Type6_g_m2_yr_per_cell = type6.*Lake_Fraction;
CH4_emiss_Lake_Type6_g_m2_yr_per_cell(CH4_emiss_Lake_Type6_g_m2_yr_per_cell==0.0)=NaN;
CH4_emiss_Lake_Type7_g_m2_yr_per_cell = type7.*Lake_Fraction;
CH4_emiss_Lake_Type7_g_m2_yr_per_cell(CH4_emiss_Lake_Type7_g_m2_yr_per_cell==0.0)=NaN;

clear type1_daily type2_daily type3_daily type4_daily type5_daily type6_daily type7_daily;

CH4_emiss_Lake_Type1_g_m2_day(isnan(CH4_emiss_Lake_Type1_g_m2_day))=0.0;
CH4_emiss_Lake_Type2_g_m2_day(isnan(CH4_emiss_Lake_Type2_g_m2_day))=0.0;
CH4_emiss_Lake_Type3_g_m2_day(isnan(CH4_emiss_Lake_Type3_g_m2_day))=0.0;
CH4_emiss_Lake_Type4_g_m2_day(isnan(CH4_emiss_Lake_Type4_g_m2_day))=0.0;
CH4_emiss_Lake_Type5_g_m2_day(isnan(CH4_emiss_Lake_Type5_g_m2_day))=0.0;
CH4_emiss_Lake_Type6_g_m2_day(isnan(CH4_emiss_Lake_Type6_g_m2_day))=0.0;
CH4_emiss_Lake_Type7_g_m2_day(isnan(CH4_emiss_Lake_Type7_g_m2_day))=0.0;

for h = 1:365;
    display(h)
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        DAILY_CH4_emiss_Lake_TOTAL_g_m2_day(h,j,k)=CH4_emiss_Lake_Type1_g_m2_day(h,j,k)+CH4_emiss_Lake_Type2_g_m2_day(h,j,k)+CH4_emiss_Lake_Type3_g_m2_day(h,j,k)+...
            CH4_emiss_Lake_Type4_g_m2_day(h,j,k)+CH4_emiss_Lake_Type5_g_m2_day(h,j,k)+CH4_emiss_Lake_Type6_g_m2_day(h,j,k)+CH4_emiss_Lake_Type7_g_m2_day(h,j,k);
    end;
end;
end;

CH4_emiss_Lake_50N_TOTAL_g_m2_day = NaN(365,720,1440);
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( Lat(j,k)>=50 )
            CH4_emiss_Lake_50N_TOTAL_g_m2_day(:,j,k) = DAILY_CH4_emiss_Lake_TOTAL_g_m2_day(:,j,k);
        else
            CH4_emiss_Lake_50N_TOTAL_g_m2_day(:,j,k) = NaN;
        end;
    end;
end;

CH4_emiss_Lake_40N_65N_TOTAL_g_m2_day = NaN(365,720,1440);
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( Lat(j,k)>=40 && Lat(j,k)<=65 )
            CH4_emiss_Lake_40N_65N_TOTAL_g_m2_day(:,j,k) = DAILY_CH4_emiss_Lake_TOTAL_g_m2_day(:,j,k);
        else
            CH4_emiss_Lake_40N_65N_TOTAL_g_m2_day(:,j,k) = NaN;
        end;
    end;
end;

DAILY_CH4_emiss_Lake_Type1_g_m2(:,:) = nansum(CH4_emiss_Lake_Type1_g_m2_day);
DAILY_CH4_emiss_Lake_Type2_g_m2(:,:) = nansum(CH4_emiss_Lake_Type2_g_m2_day);
DAILY_CH4_emiss_Lake_Type3_g_m2(:,:) = nansum(CH4_emiss_Lake_Type3_g_m2_day);
DAILY_CH4_emiss_Lake_Type4_g_m2(:,:) = nansum(CH4_emiss_Lake_Type4_g_m2_day);
DAILY_CH4_emiss_Lake_Type5_g_m2(:,:) = nansum(CH4_emiss_Lake_Type5_g_m2_day);
DAILY_CH4_emiss_Lake_Type6_g_m2(:,:) = nansum(CH4_emiss_Lake_Type6_g_m2_day);
DAILY_CH4_emiss_Lake_Type7_g_m2(:,:) = nansum(CH4_emiss_Lake_Type7_g_m2_day);
DAILY_CH4_emiss_Lake_TOTAL_g_m2(:,:) = nansum(DAILY_CH4_emiss_Lake_TOTAL_g_m2_day);
DAILY_CH4_emiss_Lake_50N_TOTAL_g_m2(:,:) = nansum(CH4_emiss_Lake_50N_TOTAL_g_m2_day);
DAILY_CH4_emiss_Lake_40N_65N_TOTAL_g_m2(:,:) = nansum(CH4_emiss_Lake_40N_65N_TOTAL_g_m2_day);

DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE1 = nansum(nansum(DAILY_CH4_emiss_Lake_Type1_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE2 = nansum(nansum(DAILY_CH4_emiss_Lake_Type2_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE3 = nansum(nansum(DAILY_CH4_emiss_Lake_Type3_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE4 = nansum(nansum(DAILY_CH4_emiss_Lake_Type4_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE5 = nansum(nansum(DAILY_CH4_emiss_Lake_Type5_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE6 = nansum(nansum(DAILY_CH4_emiss_Lake_Type6_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_TYPE7 = nansum(nansum(DAILY_CH4_emiss_Lake_Type7_g_m2.*area_m2.*Lake_Fraction)).*10^-12;

DAILY_LAKE_EMISSION_CH4_Tg_yr_TOTAL = nansum(nansum(DAILY_CH4_emiss_Lake_TOTAL_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_50N_TOTAL = nansum(nansum(DAILY_CH4_emiss_Lake_50N_TOTAL_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_40N_65N_TOTAL = nansum(nansum(DAILY_CH4_emiss_Lake_40N_65N_TOTAL_g_m2.*area_m2.*Lake_Fraction)).*10^-12;

