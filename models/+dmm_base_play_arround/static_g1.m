function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = dmm_base_play_arround.static_g1_tt(T, y, x, params);
end
g1 = zeros(18, 18);
g1(1,7)=params(6);
g1(2,1)=(-(params(6)*y(10)*y(8)))/(y(10)*y(1)*y(8)*y(10)*y(1)*y(8));
g1(2,6)=(-((-(y(8)*params(4)))/(y(6)*y(8)*y(6)*y(8))));
g1(2,8)=(-(params(6)*y(10)*y(1)))/(y(10)*y(1)*y(8)*y(10)*y(1)*y(8))-(-(y(6)*params(4)))/(y(6)*y(8)*y(6)*y(8));
g1(2,10)=(-(params(6)*y(1)*y(8)))/(y(10)*y(1)*y(8)*y(10)*y(1)*y(8));
g1(3,1)=y(8);
g1(3,8)=y(1);
g1(4,2)=(-y(6));
g1(4,3)=1-(1-params(5)+y(7));
g1(4,6)=(-y(2));
g1(4,7)=(-y(3));
g1(4,8)=(-1)/(y(8)*y(8));
g1(5,2)=(-((1-params(3))*y(9)*(-y(3))/(y(2)*y(2))*T(7)));
g1(5,3)=(-((1-params(3))*y(9)*T(7)*T(9)));
g1(5,6)=1;
g1(5,9)=(-((1-params(3))*T(2)));
g1(6,2)=(-(params(3)*y(9)*(-y(3))/(y(2)*y(2))*T(8)));
g1(6,3)=(-(params(3)*y(9)*T(8)*T(9)));
g1(6,7)=1;
g1(6,9)=(-(params(3)*T(3)));
g1(7,2)=(-(T(5)*getPowerDeriv(y(2),1-params(3),1)));
g1(7,3)=(-(T(6)*y(9)*getPowerDeriv(y(3),params(3),1)));
g1(7,5)=1;
g1(7,9)=(-(T(4)*T(6)));
g1(8,1)=1;
g1(8,4)=1;
g1(8,5)=(-1);
g1(9,9)=1/y(9)-params(1)*1/y(9);
g1(10,10)=1/y(10)-params(2)*1/y(10);
g1(11,3)=(-1);
g1(11,11)=1;
g1(12,5)=(-(1/y(5)));
g1(12,12)=1;
g1(13,1)=(-(1/y(1)));
g1(13,13)=1;
g1(14,4)=(-(1/y(4)));
g1(14,14)=1;
g1(15,2)=(-T(9));
g1(15,15)=1;
g1(16,11)=(-(1/y(11)));
g1(16,16)=1;
g1(17,2)=(-((-y(5))/(y(2)*y(2))/(y(5)/y(2))));
g1(17,5)=(-(T(9)/(y(5)/y(2))));
g1(17,17)=1;
g1(18,8)=(-(1/y(8)));
g1(18,18)=1;

end
