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
    T = dmm_g_constant_actual.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(17, 24);
g1(1,8)=(1-params(5)+y(22))*params(6)/y(21);
g1(1,21)=(1-params(5)+y(22))*(-(params(6)*y(8)))/(y(21)*y(21));
g1(1,22)=params(6)*y(8)/y(21);
g1(2,20)=(-(params(6)*params(7)*y(23)))/(params(7)*y(20)*y(23)*params(7)*y(20)*y(23));
g1(2,8)=(-((-(params(4)*y(10)))/(y(8)*y(10)*y(8)*y(10))));
g1(2,10)=(-((-(y(8)*params(4)))/(y(8)*y(10)*y(8)*y(10))));
g1(2,23)=(-(params(6)*params(7)*y(20)))/(params(7)*y(20)*y(23)*params(7)*y(20)*y(23));
g1(3,3)=y(10);
g1(3,10)=y(3);
g1(4,4)=(-y(8));
g1(4,1)=(-(1-params(5)+y(9)));
g1(4,5)=1;
g1(4,8)=(-y(4));
g1(4,9)=(-y(1));
g1(4,10)=(-1)/(y(10)*y(10));
g1(5,4)=(-((1-params(3))*y(11)*T(8)*T(9)));
g1(5,1)=(-((1-params(3))*y(11)*T(9)*T(12)));
g1(5,8)=1;
g1(5,11)=(-((1-params(3))*T(2)));
g1(6,4)=(-(params(3)*y(11)*T(8)*T(10)));
g1(6,1)=(-(params(3)*y(11)*T(10)*T(12)));
g1(6,9)=1;
g1(6,11)=(-(params(3)*T(3)));
g1(7,4)=(-(T(5)*T(11)));
g1(7,1)=(-(T(6)*T(15)));
g1(7,7)=1;
g1(7,11)=(-(T(4)*T(6)));
g1(8,3)=1;
g1(8,6)=1;
g1(8,7)=(-1);
g1(9,2)=(-(params(1)*1/y(2)));
g1(9,11)=1/y(11);
g1(9,24)=(-1);
g1(10,1)=(-1);
g1(10,12)=1;
g1(11,7)=(-(1/y(7)));
g1(11,13)=1;
g1(12,3)=(-(1/y(3)));
g1(12,14)=1;
g1(13,6)=(-(1/y(6)));
g1(13,15)=1;
g1(14,4)=(-T(12));
g1(14,16)=1;
g1(15,12)=(-(1/y(12)));
g1(15,17)=1;
g1(16,4)=(-(T(13)/T(7)));
g1(16,7)=(-(T(12)/T(7)));
g1(16,18)=1;
g1(17,10)=(-(1/y(10)));
g1(17,19)=1;

end
