function reduced = geocentric_2_reduced_power_series(geocentric,  e2)

G=geocentric;
e=sqrt(e2);

n=(1-sqrt(1-e2))./(1+sqrt(1-e2));

d_2 = n;
d_4 = 1/2*n^2;
d_6 = 1/3*n^3;
d_8 = 1/4*n^4;
d_10 = 1/5*n^5;

reduced  = G + d_2*sin(2*G) + d_4*sin(4*G) + d_6*sin(6*G) + d_8*sin(8*G) + d_10*sin(10*G);

end