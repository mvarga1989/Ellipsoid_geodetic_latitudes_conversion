function reduced = geocentric_2_reduced_trig(geocentric,  e2)

G=geocentric;

reduced =atan(tan(geocentric)./sqrt(1-e2));



end