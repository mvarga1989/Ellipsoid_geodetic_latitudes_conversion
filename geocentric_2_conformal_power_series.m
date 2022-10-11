function conformal = geocentric_2_conformal_power_series(geocentric,  e2)

G=geocentric;
e=sqrt(e2);

n=(1-sqrt(1-e2))./(1+sqrt(1-e2));

c_2 = 2/3*n^2 + 2/3*n^3-2/9.*n^4-14/45.*n.^5;
c_4 = -1/3.*n^2+4/15.*n^3+43/45.*n^4-4/45.*n^5;
c_6 = -2/5.*n^3 + 2/105*n^4 + 124/105.*n^5;
c_8 = -55/126.*n^4-16/105.*n^5;
c_10 = -22/45.*n^5;

conformal  = G + c_2*sin(2*G) + c_4*sin(4*G) + c_6*sin(6*G) + c_8*sin(8*G) + c_10*sin(10*G);

end