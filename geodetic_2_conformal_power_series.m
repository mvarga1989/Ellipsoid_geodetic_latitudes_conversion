function conformal = geodetic_2_conformal_power_series(geodetic_latitude,  e2)

B=geodetic_latitude;
e=sqrt(e2);

n=(1-sqrt(1-e2))./(1+sqrt(1-e2));
beta_2 = -2*n + 2/3*n^2 + 4/3*n^3 - 82/45*n^4 + 32/45*n^5;
beta_4 = 5./3*n.^2 - 16./15.*n^3 - 13/9.*n.^4 + 904./315*n.^5;
beta_6 = -26/15*n^3 + 34/21*n^4 + 5/8*n^5;
beta_8 = 1237/630*n^4 - 12/5*n^5;
beta_10 =-734/315*n^5;

conformal  = B + beta_2*sin(2*B) + beta_4*sin(4*B) + beta_6*sin(6*B) + beta_8*sin(8*B) + beta_10*sin(10*B);

end