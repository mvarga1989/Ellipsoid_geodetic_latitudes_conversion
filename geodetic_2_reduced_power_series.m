function reduced = geodetic_2_reduced_power_series(geodetic_latitude,  e2)

B=geodetic_latitude;
n=(1-sqrt(1-e2))./(1+sqrt(1-e2));

m_2=-n;
m_4=1/2*n^2;
m_6=-1/3*n^3;
m_8=1/4*n^4;
m_10=-1/5*n^5;

reduced  = B + m_2*sin(2*B) + m_4*sin(4*B) + m_6*sin(6*B) + m_8*sin(8*B) + m_10*sin(10*B);

end