function rectifying = geocentric_2_rectifying_power_series(geocentric,  e2)

G=geocentric;
e=sqrt(e2);
n=(1-sqrt(1-e2))./(1+sqrt(1-e2));


a_2=1/2*n+13/16*n^3-15/32*n^5;
a_4=-1/16*n^2+33/32*n^4;
a_6=-5/16*n^3+349/256*n^5;
a_8=-261/512*n^4;
a_10=-921/1280*n^5;

rectifying  = G + a_2*sin(2*G) + a_4*sin(4*G) + a_6*sin(6*G) + a_8*sin(8*G) + a_10*sin(10*G);

end