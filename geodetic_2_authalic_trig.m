function authalic = geodetic_2_authalic_trig(geodetic,  e2)

B=geodetic;
e=sqrt(e2);


q_phi = (1-e2).*sin(B)./(1-e2.*sin(B).^2)+(1-e2)./e.*atanh(e.*sin(B));
q_p   = 1+(1-e2)./e.*atanh(e);

authalic = asin(q_phi./q_p);

end