function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = dmm_g_constant_simul.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(18, 28);
g1(1,9)=(1-params(5)+y(24))*params(6)/y(23);
g1(1,23)=(1-params(5)+y(24))*(-(params(6)*y(9)))/(y(23)*y(23));
g1(1,24)=params(6)*y(9)/y(23);
g1(2,22)=(-(params(6)*y(26)*y(25)))/(y(26)*y(22)*y(25)*y(26)*y(22)*y(25));
g1(2,9)=(-((-(params(4)*y(11)))/(y(9)*y(11)*y(9)*y(11))));
g1(2,11)=(-((-(y(9)*params(4)))/(y(9)*y(11)*y(9)*y(11))));
g1(2,25)=(-(params(6)*y(26)*y(22)))/(y(26)*y(22)*y(25)*y(26)*y(22)*y(25));
g1(2,26)=(-(params(6)*y(22)*y(25)))/(y(26)*y(22)*y(25)*y(26)*y(22)*y(25));
g1(3,4)=y(11);
g1(3,11)=y(4);
g1(4,5)=(-y(9));
g1(4,1)=(-(1-params(5)+y(10)));
g1(4,6)=1;
g1(4,9)=(-y(5));
g1(4,10)=(-y(1));
g1(4,11)=(-1)/(y(11)*y(11));
g1(5,5)=(-((1-params(3))*y(12)*T(8)*T(9)));
g1(5,1)=(-((1-params(3))*y(12)*T(9)*T(12)));
g1(5,9)=1;
g1(5,12)=(-((1-params(3))*T(2)));
g1(6,5)=(-(params(3)*y(12)*T(8)*T(10)));
g1(6,1)=(-(params(3)*y(12)*T(10)*T(12)));
g1(6,10)=1;
g1(6,12)=(-(params(3)*T(3)));
g1(7,5)=(-(T(5)*T(11)));
g1(7,1)=(-(T(6)*T(15)));
g1(7,8)=1;
g1(7,12)=(-(T(4)*T(6)));
g1(8,4)=1;
g1(8,7)=1;
g1(8,8)=(-1);
g1(9,2)=(-(params(1)*1/y(2)));
g1(9,12)=1/y(12);
g1(9,27)=(-1);
g1(10,3)=(-(params(2)*1/y(3)));
g1(10,13)=1/y(13);
g1(10,28)=(-1);
g1(11,1)=(-1);
g1(11,14)=1;
g1(12,8)=(-(1/y(8)));
g1(12,15)=1;
g1(13,4)=(-(1/y(4)));
g1(13,16)=1;
g1(14,7)=(-(1/y(7)));
g1(14,17)=1;
g1(15,5)=(-T(12));
g1(15,18)=1;
g1(16,14)=(-(1/y(14)));
g1(16,19)=1;
g1(17,5)=(-(T(13)/T(7)));
g1(17,8)=(-(T(12)/T(7)));
g1(17,20)=1;
g1(18,11)=(-(1/y(11)));
g1(18,21)=1;

end
