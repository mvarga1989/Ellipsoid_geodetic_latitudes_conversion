function authalic = geodetic_2_authalic(geodetic, e2)

B=geodetic;

n=(1-sqrt(1-e2))./(1+sqrt(1-e2));


gamma_2 = -4./3.*n - 4/45.*n.^2 + 88./315*n.^3+538./4725*n.^4 + 20824/467775*n.^5;
gamma_4 = 34/45.*n.^2 + 8/105*n^3 - 2482/14175*n^4 - 37192/467775*n.^5;
gamma_6 = - 1532./2835.*n.^3 - 898./14175.*n.^4 + 54968./467775*n.^5;
gamma_8 = 6007/14175.*n.^4 + 24496/467775*n.^5;
gamma_10 = -23356./66825*n.^5;


authalic = B + gamma_2*sin(2*B) + gamma_4*sin(4*B) + gamma_6*sin(6*B) + gamma_8*sin(8*B) + gamma_10*sin(10*B);

end