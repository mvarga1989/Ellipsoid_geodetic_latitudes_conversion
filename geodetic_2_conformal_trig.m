function conformal = geodetic_2_conformal_trig(geodetic,  e2)

B=geodetic;
e=sqrt(e2);

conformal = 2*atan(tan(pi/4+geodetic./2).*((1-e*sin(geodetic))./(1+e.*sin(geodetic))).^(e/2))-pi/2;

end