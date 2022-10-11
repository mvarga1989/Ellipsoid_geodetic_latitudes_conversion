function geodetic = geocentric_2_geodetic_power_series(geocentric,  e2)

C=geocentric;
n=(1-sqrt(1-e2))./(1+sqrt(1-e2));

n_2=2*n-2*n^3+2*n^5;
n_4=2*n^2-4*n^4;
n_6=8/3*n^3-8*n^5;
n_8=4*n^4;
n_10=32/5*n^5;

geodetic  = C + n_2*sin(2*C) + n_4*sin(4*C) + n_6*sin(6*C) + n_8*sin(8*C) + n_10*sin(10*C);

end