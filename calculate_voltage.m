function result = calculate_voltage (t,f)
%AC VOLTAGE CALCULATOR
%TAKES THE TIME AND FREQUENCY VARIABLES AS INPUTS
%PRINTS THE SINUSODIAL RESULT
result = 220*sqrt(2)*sin(2*pi*f*t);
end