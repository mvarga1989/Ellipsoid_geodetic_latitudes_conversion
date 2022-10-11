clear;clc;close all

geodetic   = 45.45*pi/180;
GRS80.e2= 0.006694380022903; % squared eccentricity.

geocentric_trig = geodetic_2_geocentric_trig(geodetic,  GRS80.e2);
geocentric_ps   = geodetic_2_geocentric_power_series(geodetic,  GRS80.e2);

authalic        = geodetic_2_authalic_power_series(geodetic,  GRS80.e2);
authalic_trig   = geodetic_2_authalic_trig(geodetic,  GRS80.e2);
authalic_ps1    = geocentric_2_authalic_power_series(geocentric_ps,  GRS80.e2);

rectifying      = geodetic_2_rectifying_power_series(geodetic,  GRS80.e2);
rectifying_ps1  = geocentric_2_rectifying_power_series(geocentric_ps,  GRS80.e2);

conformal_trig  = geodetic_2_conformal_trig(geodetic,  GRS80.e2);
conformal_ps    = geodetic_2_conformal_power_series(geodetic,  GRS80.e2);
conformal_ps1   = geocentric_2_conformal_power_series(geocentric_ps, GRS80.e2);

reduced_trig    = geodetic_2_reduced_trig(geodetic,  GRS80.e2);
reduced_ps      = geodetic_2_reduced_power_series(geodetic,  GRS80.e2);
reduced_trig1   = geocentric_2_reduced_trig(geocentric_trig,  GRS80.e2);
reduced_ps1     = geocentric_2_reduced_power_series(geocentric_ps,  GRS80.e2);

geodetic_1      = geocentric_2_geodetic_power_series(geocentric_ps,  GRS80.e2);


%%

latitudes       = table;

latitudes.geodetic              = geodetic*180/pi;
latitudes.geodetic_1            = geodetic_1*180/pi;

latitudes.authalic              = authalic*180/pi;
latitudes.authalic_trig         = authalic_trig*180/pi;
latitudes.authalic_ps1          = authalic_ps1*180/pi;

latitudes.rectifying            = rectifying*180/pi;
latitudes.rectifying_ps1        = rectifying_ps1*180/pi;

latitudes.conformal_trig        = conformal_trig*180/pi;
latitudes.conformal_ps          = conformal_ps*180/pi;
latitudes.conformal_ps1         = conformal_ps1*180/pi;

latitudes.reduced_trig          = reduced_trig*180/pi;
latitudes.reduced_ps            = reduced_ps*180/pi;
latitudes.reduced_trig1         = reduced_trig1*180/pi;
latitudes.reduced_ps1           = reduced_ps1*180/pi;

latitudes.geocentric_trig       = geocentric_trig*180/pi;
latitudes.geocentric_ps         = geocentric_ps*180/pi;

clearvars -except latitudes GRS80