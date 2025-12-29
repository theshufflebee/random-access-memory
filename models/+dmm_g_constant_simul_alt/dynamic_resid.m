function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = dmm_g_constant_simul_alt.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(17, 1);
    residual(1) = (params(6)*y(8)/y(21)*(1-params(5)+y(22))) - (1);
    residual(2) = (params(6)/(params(7)*y(20)*y(23))) - (params(4)/(y(8)*y(10)));
    residual(3) = (y(10)*y(3)) - (1);
    residual(4) = (y(5)+1/y(10)) - (y(9)*y(1)+(1-params(5))*y(1)+y(8)*y(4));
    residual(5) = (y(8)) - ((1-params(3))*y(11)*T(2));
    residual(6) = (y(9)) - (params(3)*y(11)*T(3));
    residual(7) = (y(7)) - (T(5)*T(6));
    residual(8) = (y(6)) - (y(7)-y(3));
    residual(9) = (log(y(11))) - (params(1)*log(y(2))+x(it_, 1));
    residual(10) = (y(12)) - (y(1));
    residual(11) = (y(13)) - (log(y(7)));
    residual(12) = (y(14)) - (log(y(3)));
    residual(13) = (y(15)) - (log(y(6)));
    residual(14) = (y(16)) - (log(y(4)));
    residual(15) = (y(17)) - (log(y(12)));
    residual(16) = (y(18)) - (log(T(7)));
    residual(17) = (y(19)) - (log(y(10)));

end
