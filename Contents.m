% Conversion between latitudes which have applications to many problems in geosciences, especially geodesy, geophysics and the theory of map projections
% The following latitudes are converted: geodetic latitude, geocentric latitude, authalic latitude,
% rectifying latitude, conformal latitude and reduced latitude.
% Formulas use different algorithms, mainly power-series and trigonometric formulas.
% 
% The code is vectorised.
%
% geocentric_2_authalic_power_series
% geocentric_2_conformal_power_series
% geocentric_2_geodetic_power_series
% geocentric_2_rectifying_power_series
% geocentric_2_reduced_power_series
% geocentric_2_reduced_trig
% geodetic_2_authalic_power_series
% geodetic_2_authalic_trig
% geodetic_2_conformal_power_series
% geodetic_2_conformal_trig
% geodetic_2_geocentric_power_series
% geodetic_2_geocentric_trig
% geodetic_2_rectifying_power_series
% geodetic_2_reduced_power_series
% geodetic_2_reduced_trig
% References:
% (1) Bian, Shao-Feng, and Hou-Pu Li. "Mathematical Analysis in Cartography by Means of Computer Algebra System." Cartography-A Tool for Spatial Analysis. IntechOpen, 2012.
% (2) Li, Xiaoyong, et al. "Simplified Expansions of Common Latitudes with Geodetic Latitude and Geocentric Latitude as Variables." Applied Sciences 12.15 (2022): 7818.
% Keywords: geometrical geodesy, latitudes, geodetic latitude, map projection, coordinate conversions
%
% Copyright (c) 2022, Matej Varga
% All rights reserved.
% Email: mvarga1989@gmail.com