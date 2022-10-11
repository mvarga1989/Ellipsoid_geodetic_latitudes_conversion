function rectifying = geodetic_2_rectifying(geodetic, e2)

B=geodetic;
n=(1-sqrt(1-e2))./(1+sqrt(1-e2));


alfa_2 = -3/2*n + 9/16*n^3 -3/32*n^5;
alfa_4 = 15/16*n^2 -15/32*n^4;
alfa_6 = -35/48*n^3 + 105/256*n^5;
alfa_8 = 315/512*n^4;
alfa_10 = -693/1280*n^5;


rectifying = B + alfa_2*sin(2*B) + alfa_4*sin(4*B) + alfa_6*sin(6*B) + alfa_8*sin(8*B) + alfa_10*sin(10*B);

end