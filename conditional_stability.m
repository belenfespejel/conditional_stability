function [CS,RS,CL,RL] = conditional_stability(s11,s12, s21, s22)
% This function calculates the conditional stability of an amplifier, given
% its scattering parameters
% input parameters must be written as z = mod*exp(i*arg)
delta = s11*s22 - s12*s21;
CS = (conj((s11 - delta*conj(s22))))/((abs(s11))^2-(abs(delta))^2);
RS = abs((s12*s21)/((abs(s11))^2-(abs(delta))^2));
CL = (conj((s22 - delta*conj(s11))))/((abs(s22))^2-(abs(delta))^2);
RL = abs((s12*s21)/((abs(s22))^2-(abs(delta))^2));

% Para introducir los valores de los argumentos hacemos, por ejemplo (suponiendo que tenemos
% los ángulos en grados):
% >> s11 = 0.894*exp(i*degtorad(-60.6));

% Una vez ejecutada la función, para sacar los parámetros hacemos (por ejemplo, para CS):
% >> abs(CS)
% >> radtodeg(angle(CS))
end
