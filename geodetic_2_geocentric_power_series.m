function geocentric = geodetic_2_geocentric_trig(geodetic_latitude,  e2)

B=geodetic_latitude;
n=(1-sqrt(1-e2))./(1+sqrt(1-e2));

n_2=-2*n+2*n^3-2*n^5;
n_4=2*n^2-4*n^4;
n_6=-8/3*n^3+8*n^5;
n_8=4*n^4;
n_10=-32/5*n^5;

geocentric  = B + n_2*sin(2*B) + n_4*sin(4*B) + n_6*sin(6*B) + n_8*sin(8*B) + n_10*sin(10*B);

end