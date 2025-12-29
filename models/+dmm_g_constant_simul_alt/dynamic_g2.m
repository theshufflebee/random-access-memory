function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = dmm_g_constant_simul_alt.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(58,1);
g2_j = zeros(58,1);
g2_v = zeros(58,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=2;
g2_i(9)=2;
g2_i(10)=2;
g2_i(11)=2;
g2_i(12)=2;
g2_i(13)=2;
g2_i(14)=2;
g2_i(15)=2;
g2_i(16)=3;
g2_i(17)=3;
g2_i(18)=4;
g2_i(19)=4;
g2_i(20)=4;
g2_i(21)=4;
g2_i(22)=4;
g2_i(23)=5;
g2_i(24)=5;
g2_i(25)=5;
g2_i(26)=5;
g2_i(27)=5;
g2_i(28)=5;
g2_i(29)=5;
g2_i(30)=5;
g2_i(31)=6;
g2_i(32)=6;
g2_i(33)=6;
g2_i(34)=6;
g2_i(35)=6;
g2_i(36)=6;
g2_i(37)=6;
g2_i(38)=6;
g2_i(39)=7;
g2_i(40)=7;
g2_i(41)=7;
g2_i(42)=7;
g2_i(43)=7;
g2_i(44)=7;
g2_i(45)=7;
g2_i(46)=7;
g2_i(47)=9;
g2_i(48)=9;
g2_i(49)=11;
g2_i(50)=12;
g2_i(51)=13;
g2_i(52)=14;
g2_i(53)=15;
g2_i(54)=16;
g2_i(55)=16;
g2_i(56)=16;
g2_i(57)=16;
g2_i(58)=17;
g2_j(1)=189;
g2_j(2)=488;
g2_j(3)=190;
g2_j(4)=512;
g2_j(5)=501;
g2_j(6)=502;
g2_j(7)=525;
g2_j(8)=476;
g2_j(9)=479;
g2_j(10)=548;
g2_j(11)=176;
g2_j(12)=178;
g2_j(13)=224;
g2_j(14)=226;
g2_j(15)=551;
g2_j(16)=58;
g2_j(17)=219;
g2_j(18)=80;
g2_j(19)=172;
g2_j(20)=9;
g2_j(21)=193;
g2_j(22)=226;
g2_j(23)=76;
g2_j(24)=73;
g2_j(25)=4;
g2_j(26)=83;
g2_j(27)=244;
g2_j(28)=1;
g2_j(29)=11;
g2_j(30)=241;
g2_j(31)=76;
g2_j(32)=73;
g2_j(33)=4;
g2_j(34)=83;
g2_j(35)=244;
g2_j(36)=1;
g2_j(37)=11;
g2_j(38)=241;
g2_j(39)=76;
g2_j(40)=73;
g2_j(41)=4;
g2_j(42)=83;
g2_j(43)=244;
g2_j(44)=1;
g2_j(45)=11;
g2_j(46)=241;
g2_j(47)=26;
g2_j(48)=251;
g2_j(49)=151;
g2_j(50)=51;
g2_j(51)=126;
g2_j(52)=76;
g2_j(53)=276;
g2_j(54)=76;
g2_j(55)=79;
g2_j(56)=148;
g2_j(57)=151;
g2_j(58)=226;
g2_v(1)=(1-params(5)+y(22))*(-params(6))/(y(21)*y(21));
g2_v(2)=g2_v(1);
g2_v(3)=params(6)/y(21);
g2_v(4)=g2_v(3);
g2_v(5)=(1-params(5)+y(22))*(-((-(params(6)*y(8)))*(y(21)+y(21))))/(y(21)*y(21)*y(21)*y(21));
g2_v(6)=(-(params(6)*y(8)))/(y(21)*y(21));
g2_v(7)=g2_v(6);
g2_v(8)=(-((-(params(6)*params(7)*y(23)))*(params(7)*y(20)*y(23)*params(7)*y(23)+params(7)*y(20)*y(23)*params(7)*y(23))))/(params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*params(7)*y(20)*y(23));
g2_v(9)=(params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*(-(params(6)*params(7)))-(-(params(6)*params(7)*y(23)))*(params(7)*y(20)*params(7)*y(20)*y(23)+params(7)*y(20)*params(7)*y(20)*y(23)))/(params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*params(7)*y(20)*y(23));
g2_v(10)=g2_v(9);
g2_v(11)=(-((-((-(params(4)*y(10)))*(y(10)*y(8)*y(10)+y(10)*y(8)*y(10))))/(y(8)*y(10)*y(8)*y(10)*y(8)*y(10)*y(8)*y(10))));
g2_v(12)=(-((y(8)*y(10)*y(8)*y(10)*(-params(4))-(-(params(4)*y(10)))*(y(8)*y(8)*y(10)+y(8)*y(8)*y(10)))/(y(8)*y(10)*y(8)*y(10)*y(8)*y(10)*y(8)*y(10))));
g2_v(13)=g2_v(12);
g2_v(14)=(-((-((-(y(8)*params(4)))*(y(8)*y(8)*y(10)+y(8)*y(8)*y(10))))/(y(8)*y(10)*y(8)*y(10)*y(8)*y(10)*y(8)*y(10))));
g2_v(15)=(-((-(params(6)*params(7)*y(20)))*(params(7)*y(20)*params(7)*y(20)*y(23)+params(7)*y(20)*params(7)*y(20)*y(23))))/(params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*params(7)*y(20)*y(23)*params(7)*y(20)*y(23));
g2_v(16)=1;
g2_v(17)=g2_v(16);
g2_v(18)=(-1);
g2_v(19)=g2_v(18);
g2_v(20)=(-1);
g2_v(21)=g2_v(20);
g2_v(22)=(y(10)+y(10))/(y(10)*y(10)*y(10)*y(10));
g2_v(23)=(-((1-params(3))*y(11)*(T(9)*(-((-y(1))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4))+T(8)*T(8)*T(16))));
g2_v(24)=(-((1-params(3))*y(11)*(T(9)*T(17)+T(8)*T(12)*T(16))));
g2_v(25)=g2_v(24);
g2_v(26)=(-((1-params(3))*T(8)*T(9)));
g2_v(27)=g2_v(26);
g2_v(28)=(-((1-params(3))*y(11)*T(12)*T(12)*T(16)));
g2_v(29)=(-((1-params(3))*T(9)*T(12)));
g2_v(30)=g2_v(29);
g2_v(31)=(-(params(3)*y(11)*(T(10)*(-((-y(1))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4))+T(8)*T(8)*T(18))));
g2_v(32)=(-(params(3)*y(11)*(T(10)*T(17)+T(8)*T(12)*T(18))));
g2_v(33)=g2_v(32);
g2_v(34)=(-(params(3)*T(8)*T(10)));
g2_v(35)=g2_v(34);
g2_v(36)=(-(params(3)*y(11)*T(12)*T(12)*T(18)));
g2_v(37)=(-(params(3)*T(10)*T(12)));
g2_v(38)=g2_v(37);
g2_v(39)=(-(T(5)*getPowerDeriv(y(4),1-params(3),2)));
g2_v(40)=(-(T(11)*T(15)));
g2_v(41)=g2_v(40);
g2_v(42)=(-(T(4)*T(11)));
g2_v(43)=g2_v(42);
g2_v(44)=(-(T(6)*y(11)*getPowerDeriv(y(1),params(3),2)));
g2_v(45)=(-(T(6)*T(14)));
g2_v(46)=g2_v(45);
g2_v(47)=(-(params(1)*(-1)/(y(2)*y(2))));
g2_v(48)=(-1)/(y(11)*y(11));
g2_v(49)=(-((-1)/(y(7)*y(7))));
g2_v(50)=(-((-1)/(y(3)*y(3))));
g2_v(51)=(-((-1)/(y(6)*y(6))));
g2_v(52)=(-T(17));
g2_v(53)=(-((-1)/(y(12)*y(12))));
g2_v(54)=(-((T(7)*(-((-y(7))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4))-T(13)*T(13))/(T(7)*T(7))));
g2_v(55)=(-((T(7)*T(17)-T(12)*T(13))/(T(7)*T(7))));
g2_v(56)=g2_v(55);
g2_v(57)=(-((-(T(12)*T(12)))/(T(7)*T(7))));
g2_v(58)=(-((-1)/(y(10)*y(10))));
g2 = sparse(g2_i,g2_j,g2_v,17,576);
end
