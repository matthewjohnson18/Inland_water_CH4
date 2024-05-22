%%%%%%% Read in IDS EM Lake Emissions data %%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;

load LAND_Latitude_Zones_MERRA2_Derived_v02.mat;

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\scripts\Future_Lake_emissions\Emission_Rates;
load Boreal_Temp_Trop_Baseline_emiss_rates_v02_FallTurnover_5degrees.mat;

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\scripts\Lake_Global_Emission;
load Wik_Thermokarst_emission_rates_v01_Fall_Turnover_flux.mat;
load Wik_Glacial_postglacial_emission_rates_v01_Fall_Turnover_flux.mat;
load Wik_PeatPond_emission_rates_v01_Fall_Turnover_flux.mat;

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

cd C:\Users\mjohns34\RESEARCH\NASA_Research\Research_Ideas\Methane_Wetland_Lakes_NA\ftv04_season_length\;

clear filename;
filename = 'ftv04_season_length_clim_025deg_50N_1998-2007.nc'; %ALL
fileinfo = ncinfo(filename);

season = ncread(filename, 'season'); % lon x lat 

Season_Length = NaN(720,1440);
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        Lake_Season(j,k) = season(k,j);
    end;
end;

filename = 'ftv04_thaw_date_clim_025deg_10N_1998-2007.nc'; 
fileinfo = ncinfo(filename);

thaw_date = ncread(filename, 'thaw'); % lon x lat 
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        Thaw_Date(j,k) = thaw_date(k,j);
    end;
end;

filename = 'ftv04_freeze_date_clim_025deg_10N_1998-2007.nc'; 
fileinfo = ncinfo(filename);

freeze_date = ncread(filename, 'freeze'); % lon x lat 
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        Freeze_Date(j,k) = freeze_date(k,j);
    end;
end;

for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( isnan(Lake_Season(j,k)) )
            Lake_Season(j,k) = Freeze_Date(j,k) - Thaw_Date(j,k);
        end;
    end;
end;

clear filename;

filename = 'lake_LIP_thaw_date_clim_025deg_10N_2003-2015.nc'; 
fileinfo = ncinfo(filename);

thaw_date = ncread(filename, 'thaw'); % lon x lat 
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        Thaw_Date_LIP(j,k) = thaw_date(k,j);
    end;
end;

filename = 'lake_LIP_freeze_date_clim_025deg_10N_2003-2015.nc'; 
fileinfo = ncinfo(filename);

freeze_date = ncread(filename, 'freeze'); % lon x lat 
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        Freeze_Date_LIP(j,k) = freeze_date(k,j);
    end;
end;

for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( isnan(Lake_Season(j,k)) )
            Lake_Season(j,k) = Freeze_Date_LIP(j,k) - Thaw_Date_LIP(j,k);
            Freeze_Date(j,k) = Freeze_Date_LIP(j,k);
            Thaw_Date(j,k) = Thaw_Date_LIP(j,k);
        end;
    end;
end;
Lake_Season(isnan(Lake_Season))=365;
Lake_Season = flipud(Lake_Season);

Lake_Season(isnan(Lake_Fraction))=NaN;
Lake_Season(Lake_Fraction==0.0)=NaN;

%%%% Daily CH4 Emiss Rates %%%%
%%%% g CH4/m^2/day %%%%%

Boreal_rate = (BOREAL_MEAN_EBULLITIVE_CH4_FLUX_mg_m2_d + BOREAL_MEAN_DIFFUSIVE_CH4_FLUX_mg_m2_d)./1000;
Temperate_north_rate = (TEMPERATE_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d + TEMPERATE_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d)./1000;
Temperate_south_rate = (TEMPERATE_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d + TEMPERATE_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d)./1000;
Tropical_north_rate = (TROPICAL_MEAN_EBULLITIVE_NORTHERN_CH4_FLUX_mg_m2_d + TROPICAL_MEAN_DIFFUSIVE_NORTHERN_CH4_FLUX_mg_m2_d)./1000;
Tropical_south_rate = (TROPICAL_MEAN_EBULLITIVE_SOUTHERN_CH4_FLUX_mg_m2_d + TROPICAL_MEAN_DIFFUSIVE_SOUTHERN_CH4_FLUX_mg_m2_d)./1000;

Thermo_rate = (THERMOKARST_MEAN_DIFF_emission_mgCH4_m2_d + THERMOKARST_MEAN_EBUL_emission_mgCH4_m2_d)./1000;
Glacial_rate = (GLACIAL_MEAN_DIFF_emission_mgCH4_m2_d + GLACIAL_MEAN_EBUL_emission_mgCH4_m2_d)./1000;
Peat_rate = (PEAT_POND_MEAN_DIFF_NORTHERN_emission_mgCH4_m2_d + PEAT_POND_MEAN_EBUL_NORTHERN_emission_mgCH4_m2_d)./1000;
Organic_rate_north = Peat_rate;
Organic_rate_south = Peat_rate;

Mid_day = [1 32 60 91 121 152 182 213 244 274 305 335 365];
Day = 1:1:365;

Boreal_rate(13) = Boreal_rate(12);
Boreal_rate_interp = interp1(Mid_day,Boreal_rate,Day,'spline');

Temperate_north_rate(13) = Temperate_north_rate(12);
Temperate_north_rate_interp = interp1(Mid_day,Temperate_north_rate,Day,'spline');

Temperate_south_rate(13) = Temperate_south_rate(12);
Temperate_south_rate_interp = interp1(Mid_day,Temperate_south_rate,Day,'spline');

Tropical_north_rate(13) = Tropical_north_rate(12);
Tropical_north_rate_interp = interp1(Mid_day,Tropical_north_rate,Day,'spline');

Tropical_south_rate(13) = Tropical_south_rate(12);
Tropical_south_rate_interp = interp1(Mid_day,Tropical_south_rate,Day,'spline');

Thermo_rate(13) = Thermo_rate(12);
Thermo_rate_interp = interp1(Mid_day,Thermo_rate,Day,'spline');

Glacial_rate(13) = Glacial_rate(12);
Glacial_rate_interp = interp1(Mid_day,Glacial_rate,Day,'spline');

Peat_rate(13) = Peat_rate(12);
Peat_rate_interp = interp1(Mid_day,Peat_rate,Day,'spline');

Organic_rate_north(13) = Organic_rate_north(12);
Organic_rate_north_interp = interp1(Mid_day,Organic_rate_north,Day,'spline');

Organic_rate_south(13) = Organic_rate_south(12);
Organic_rate_south_interp = interp1(Mid_day,Organic_rate_south,Day,'spline');


ANNUAL_Boreal_emiss_rate_g_m2_day = nanmean(Boreal_rate_interp);
ANNUAL_Temperate_emiss_rate_g_m2_day = nanmean((Temperate_north_rate_interp+Temperate_south_rate_interp)./2);
ANNUAL_Tropical_emiss_rate_g_m2_day = nanmean((Tropical_north_rate_interp+Tropical_south_rate_interp)./2);
ANNUAL_Thermokarst_emiss_rate_g_m2_day = nanmean(Thermo_rate_interp);
ANNUAL_PeatPond_emiss_rate_g_m2_day = nanmean(Peat_rate_interp);
ANNUAL_Glacial_emiss_rate_g_m2_day = nanmean(Glacial_rate_interp);

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
            CH4_EM_Lake_Season_GLOB_TYPE1(j,k) = Lake_Season(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 2) )
            CH4_EM_Lake_Season_GLOB_TYPE2(j,k) = Lake_Season(j,k);
        end;
        if( (CH4_EM_Lake_Type(j,k) == 3) )
            CH4_EM_Lake_Season_GLOB_TYPE3(j,k) = Lake_Season(j,k);
        end;
        if( (Lake_Type_TYPE4_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE4(j,k) = Lake_Season(j,k);
        end;
        if( (Lake_Type_TYPE5_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE5(j,k) = Lake_Season(j,k);
        end;
        if( (Lake_Type_TYPE6_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE6(j,k) = Lake_Season(j,k);
        end;
        if( (Lake_Type_TYPE7_Area(j,k) > 0) )
            CH4_EM_Lake_Season_GLOB_TYPE7(j,k) = Lake_Season(j,k);
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

clear LAKE_SEASON_MEAN_TYPE1 LAKE_SEASON_MEAN_TYPE2 LAKE_SEASON_MEAN_TYPE3 LAKE_SEASON_MEAN_TYPE4 LAKE_SEASON_MEAN_TYPE5 LAKE_SEASON_MEAN_TYPE6 LAKE_SEASON_MEAN_TYPE7;

%%%%%%%%%%%% DAILY EMISSION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CH4_emiss_Lake_Type1_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type2_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type3_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type4_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type5_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type6_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type7_g_m2_day = zeros(365,J_GLOB,K_GLOB);

Lake_Type_TYPE1_Area(isnan(Lake_Type_TYPE1_Area))=0.0;
Lake_Type_TYPE2_Area(isnan(Lake_Type_TYPE2_Area))=0.0;
Lake_Type_TYPE3_Area(isnan(Lake_Type_TYPE3_Area))=0.0;
Lake_Type_TYPE4_Area(isnan(Lake_Type_TYPE4_Area))=0.0;
Lake_Type_TYPE5_Area(isnan(Lake_Type_TYPE5_Area))=0.0;
Lake_Type_TYPE6_Area(isnan(Lake_Type_TYPE6_Area))=0.0;
Lake_Type_TYPE7_Area(isnan(Lake_Type_TYPE7_Area))=0.0;

Thaw_Date_check = flipud(Thaw_Date);
Thaw_Date_check(Lake_Season==365)=0.0;
Freeze_Date_check = flipud(Freeze_Date);
Freeze_Date_check(Lake_Season==365)=365;
Freeze_Date_check(Freeze_Date_check==0.0)=365;

Thaw_Date_check(Thaw_Date_check<20)=1.0; 
Freeze_Date_check(Freeze_Date_check>355)=365;
 
for h = 1:365;
    display(h)
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( h>=Thaw_Date_check(j,k) && h<=Freeze_Date_check(j,k) )
            CH4_emiss_Lake_Type1_g_m2_day(h,j,k) = (Thermo_rate_interp(1,h).*Lake_Type_TYPE1_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));    
            CH4_emiss_Lake_Type2_g_m2_day(h,j,k) = (Glacial_rate_interp(1,h).*Lake_Type_TYPE2_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));
            CH4_emiss_Lake_Type3_g_m2_day(h,j,k) = (Peat_rate_interp(1,h).*Lake_Type_TYPE3_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));
        if(Lat(j,k)>=0)
            CH4_emiss_Lake_Type4_g_m2_day(h,j,k) = (Organic_rate_north_interp(1,h).*Lake_Type_TYPE4_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k)); 
        else
            CH4_emiss_Lake_Type4_g_m2_day(h,j,k) = (Organic_rate_south_interp(1,h).*Lake_Type_TYPE4_Area(j,k))./(area_m2(j,k).*Lake_Fraction(j,k));
        end;
        if( Lake_Type_TYPE5_Area(j,k) > 0.0)
            CH4_emiss_Lake_Type5_g_m2_day(h,j,k) = Boreal_rate_interp(1,h).*Lake_Type_TYPE5_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE6_Area(j,k) > 0.0 && Lat(j,k)>0)
            CH4_emiss_Lake_Type6_g_m2_day(h,j,k) = Temperate_north_rate_interp(1,h).*Lake_Type_TYPE6_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE6_Area(j,k) > 0.0 && Lat(j,k)<=0)
            CH4_emiss_Lake_Type6_g_m2_day(h,j,k) = Temperate_south_rate_interp(1,h).*Lake_Type_TYPE6_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE7_Area(j,k) > 0.0 && Lat(j,k)>0)
            CH4_emiss_Lake_Type7_g_m2_day(h,j,k) = Tropical_north_rate_interp(1,h).*Lake_Type_TYPE7_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        elseif( Lake_Type_TYPE7_Area(j,k) > 0.0 && Lat(j,k)<=0)
            CH4_emiss_Lake_Type7_g_m2_day(h,j,k) = Tropical_south_rate_interp(1,h).*Lake_Type_TYPE7_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        else
            CH4_emiss_Lake_Type5_g_m2_day(h,j,k) = Boreal_rate_interp(1,h).*Lake_Type_TYPE5_Area(j,k)./(area_m2(j,k).*Lake_Fraction(j,k));
        end;
        end; 
    end;
end;
end;

clear CH4_emiss_Lake_Type1_g_m2_day CH4_emiss_Lake_Type2_g_m2_day CH4_emiss_Lake_Type3_g_m2_day CH4_emiss_Lake_Type4_g_m2_day CH4_emiss_Lake_Type5_g_m2_day CH4_emiss_Lake_Type6_g_m2_day CH4_emiss_Lake_Type7_g_m2_day CH4_emiss_Lake_TOTAL_g_m2_day;
clear DAILY_CH4_emiss_Lake_Type1_g_m2 DAILY_CH4_emiss_Lake_Type2_g_m2 DAILY_CH4_emiss_Lake_Type3_g_m2 DAILY_CH4_emiss_Lake_Type4_g_m2 DAILY_CH4_emiss_Lake_Type5_g_m2 DAILY_CH4_emiss_Lake_Type6_g_m2 DAILY_CH4_emiss_Lake_Type7_g_m2;

Accum_days = zeros(720,1440);
Accum_days_type1 = zeros(720,1440);
Accum_days_type2 = zeros(720,1440);
Accum_days_type3 = zeros(720,1440);
Accum_days_type4 = zeros(720,1440);
Accum_days_type5 = zeros(720,1440);
Accum_days_type6 = zeros(720,1440);
Accum_days_type7 = zeros(720,1440);
Freeze_length = zeros(720,1440);
Bubble_flux_Type1_g_m2 = zeros(720,1440);
Bubble_flux_Type2_g_m2 = zeros(720,1440);
Bubble_flux_Type3_g_m2 = zeros(720,1440);
Bubble_flux_Type4_g_m2 = zeros(720,1440);
Bubble_flux_Type5_g_m2 = zeros(720,1440);
Bubble_flux_Type6_g_m2 = zeros(720,1440);
Bubble_flux_Type7_g_m2 = zeros(720,1440);
Season_length_test = Lake_Season;
Season_length_test(isnan(Season_length_test))=0.0;

Lag_time = 60;

for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        Freeze_length(j,k) = 365-Season_length_test(j,k);
        Accum_days(j,k) = Freeze_length(j,k)-Lag_time;
        if(Accum_days(j,k)<0)
            Accum_days(j,k)=0.0;
        end;
        if(Lake_Type_TYPE1_Area(j,k)>0.0)
            Accum_days_type1(j,k) = Accum_days(j,k);
        end;
        if(Lake_Type_TYPE2_Area(j,k)>0.0)
            Accum_days_type2(j,k) = Accum_days(j,k);
        end;
        if(Lake_Type_TYPE3_Area(j,k)>0.0)
            Accum_days_type3(j,k) = Accum_days(j,k);
        end;
        if(Lake_Type_TYPE4_Area(j,k)>0.0)
            Accum_days_type4(j,k) = Accum_days(j,k);
        end;
        if(Lake_Type_TYPE5_Area(j,k)>0.0)
            Accum_days_type5(j,k) = Accum_days(j,k);
        end;
        if(Lake_Type_TYPE6_Area(j,k)>0.0)
            Accum_days_type6(j,k) = Accum_days(j,k);
        end;
        if(Lake_Type_TYPE7_Area(j,k)>0.0)
            Accum_days_type7(j,k) = Accum_days(j,k);
        end;
        Bubble_flux_Type1_g_m2(j,k) = Accum_days_type1(j,k).*nanmean(Thermo_rate);
        Bubble_flux_Type2_g_m2(j,k) = Accum_days_type2(j,k).*nanmean(Glacial_rate);
        Bubble_flux_Type3_g_m2(j,k) = Accum_days_type3(j,k).*nanmean(Peat_rate);
        Bubble_flux_Type4_g_m2(j,k) = Accum_days_type4(j,k).*nanmean(Organic_rate_north);
        Bubble_flux_Type5_g_m2(j,k) = Accum_days_type5(j,k).*nanmean(Boreal_rate);
        Bubble_flux_Type6_g_m2(j,k) = Accum_days_type6(j,k).*nanmean(Temperate_north_rate+Temperate_south_rate);
        Bubble_flux_Type7_g_m2(j,k) = Accum_days_type7(j,k).*nanmean(Tropical_north_rate+Tropical_south_rate);           
	end;
end;
clear Season_length_test Accum_days_type1 Accum_days_type2 Accum_days_type3 Accum_days_type4 Accum_days_type5 Accum_days_type6 Accum_days_type7 Freeze_length;
clear Lake_Type_TYPE1_Area Lake_Type_TYPE2_Area Lake_Type_TYPE3_Area Lake_Type_TYPE4_Area Lake_Type_TYPE5_Area Lake_Type_TYPE6_Area Lake_Type_TYPE7_Area;

CH4_emiss_Lake_Type1_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type2_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type3_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type4_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type5_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type6_g_m2_day = zeros(365,J_GLOB,K_GLOB);
CH4_emiss_Lake_Type7_g_m2_day = zeros(365,J_GLOB,K_GLOB);
Thaw_Pulse_g_m2_day = zeros(365,J_GLOB,K_GLOB);

Burst_length = 14;
Oxidation_fraction = 0.75; % 75% of accumulated methane is oxidized.

for h = 9:365;
    display(h)
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( (Thaw_Date_check(j,k)>0) && (h >= (Thaw_Date_check(j,k)-(Burst_length/2))) && (h <= (Thaw_Date_check(j,k)+(Burst_length/2))) )
            CH4_emiss_Lake_Type1_g_m2_day(h,j,k) = (Bubble_flux_Type1_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            CH4_emiss_Lake_Type2_g_m2_day(h,j,k) = (Bubble_flux_Type2_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            CH4_emiss_Lake_Type3_g_m2_day(h,j,k) = (Bubble_flux_Type3_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            CH4_emiss_Lake_Type4_g_m2_day(h,j,k) = (Bubble_flux_Type4_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            CH4_emiss_Lake_Type5_g_m2_day(h,j,k) = (Bubble_flux_Type5_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            CH4_emiss_Lake_Type6_g_m2_day(h,j,k) = (Bubble_flux_Type6_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            CH4_emiss_Lake_Type7_g_m2_day(h,j,k) = (Bubble_flux_Type7_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction);
            Thaw_Pulse_g_m2_day(h,j,k) = ((Bubble_flux_Type1_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction))+((Bubble_flux_Type2_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction)) ...
                                         +((Bubble_flux_Type3_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction))+((Bubble_flux_Type4_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction)) ...
                                         +((Bubble_flux_Type5_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction))+((Bubble_flux_Type6_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction))+((Bubble_flux_Type7_g_m2(j,k)./Burst_length).*(1-Oxidation_fraction));
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
thaw_pulse(:,:)=nansum(Thaw_Pulse_g_m2_day);
thaw_pulse(isnan(thaw_pulse))=0.0;
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
DAILY_THAW_Pulse_g_m2_per_cell = thaw_pulse.*Lake_Fraction;
DAILY_THAW_Pulse_g_m2_per_cell(DAILY_THAW_Pulse_g_m2_per_cell==0.0)=NaN;

clear type1_daily type2_daily type3_daily type4_daily type5_daily type6_daily type7_daily;

DAILY_CH4_emiss_Lake_TOTAL_g_m2_day = (CH4_emiss_Lake_Type1_g_m2_day+CH4_emiss_Lake_Type2_g_m2_day+CH4_emiss_Lake_Type3_g_m2_day+CH4_emiss_Lake_Type4_g_m2_day+CH4_emiss_Lake_Type5_g_m2_day+CH4_emiss_Lake_Type6_g_m2_day+CH4_emiss_Lake_Type7_g_m2_day);

CH4_emiss_Lake_TOTAL_g_m2_day = DAILY_CH4_emiss_Lake_TOTAL_g_m2_day;

CH4_emiss_Lake_NorthAmerica_TOTAL_g_m2_day = NaN(365,720,1440);
for j = 1:J_GLOB;
    for k = 1:K_GLOB;
        if( Lat(j,k)<=10 || Lat(j,k)>=80 || Lon(j,k)<-170 || Lon(j,k)>-50 )
            CH4_emiss_Lake_NorthAmerica_TOTAL_g_m2_day(:,j,k) = NaN;
        else
            CH4_emiss_Lake_NorthAmerica_TOTAL_g_m2_day(:,j,k) = DAILY_CH4_emiss_Lake_TOTAL_g_m2_day(:,j,k);
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
DAILY_THAW_Pulse_g_m2(:,:) = nansum(DAILY_CH4_emiss_Lake_TOTAL_g_m2_day);
DAILY_CH4_emiss_Lake_NA_TOTAL_g_m2(:,:) = nansum(CH4_emiss_Lake_NorthAmerica_TOTAL_g_m2_day);
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
DAILY_LAKE_EMISSION_CH4_Tg_yr_THAW_PULSE = nansum(nansum(DAILY_THAW_Pulse_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_NorthAmerica_TOTAL = nansum(nansum(DAILY_CH4_emiss_Lake_NA_TOTAL_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_50N_TOTAL = nansum(nansum(DAILY_CH4_emiss_Lake_50N_TOTAL_g_m2.*area_m2.*Lake_Fraction)).*10^-12;
DAILY_LAKE_EMISSION_CH4_Tg_yr_40N_65N_TOTAL = nansum(nansum(DAILY_CH4_emiss_Lake_40N_65N_TOTAL_g_m2.*area_m2.*Lake_Fraction)).*10^-12;

