function reduced = geodetic_2_reduced_trig(geodetic,  e2)

B=geodetic;
reduced = atan(sqrt(1-e2).*tan(B));

end