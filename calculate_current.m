function result = calculate_current(t,r,l,c,f)
%AC CURRENT CALCULATOR
%TAKES TIME,FREQUENCY,L,C,R AS AN INPUT
%RETURNS SINUSODIAL AC CURRENT
result = (220*sqrt(2)*sin(2*pi*f*t)/r) - ((110*sqrt(2)*cos(2*pi*f*t))/(pi*f*l)) + (440*sqrt(2)*c*pi*f*cos(2*pi*f*t));
end