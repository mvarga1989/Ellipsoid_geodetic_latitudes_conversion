function geocentric = geodetic_2_geocentric_trig(geodetic_latitude,  e2)

B=geodetic_latitude;
geocentric = atan((1-e2).*tan(geodetic_latitude));

end