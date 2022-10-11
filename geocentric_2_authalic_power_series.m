function conformal = geocentric_2_authalic_power_series(geocentric,  e2)


G=geocentric;
e=sqrt(e2);
n=(1-sqrt(1-e2))./(1+sqrt(1-e2));

b_2=2/3*n - 4/45*n^2 + 62/105*n^3 + 778/4725*n^4 - 193082/467775*n^5;
b_4=4/45*n^2 - 32/315*n^3 + 12338./14175.*n^4-92696/467775.*n^5;
b_6=-524/2835*n^3-1618/14175*n^4 + 612536/467775*n^5;
b_8=-5933/14175*n^4-8324/66825*n^5;
b_10=320044/467775*n^5;

conformal  = G + b_2*sin(2*G) + b_4*sin(4*G) + b_6*sin(6*G) + b_8*sin(8*G) + b_10*sin(10*G);

end