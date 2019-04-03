function result = calculate_empedance(r,c,l,f)
%EMPEDANCE CALCULATOR
%TAKES R C L F VALUES AS INPUT
%GIVES THE RESULT AS COMPLEX NUMBER
result = 1 / ((1/r)+(1/(1j*2*pi*f*l))+(1j*pi*f*c));
end