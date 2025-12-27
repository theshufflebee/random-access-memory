function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 19);

T = dmm_g_15_simul.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(16) = y(26)*y(22)*y(25)*y(26)*y(22)*y(25)*y(26)*y(22)*y(25)*y(26)*y(22)*y(25);
T(17) = getPowerDeriv(T(1),params(3),2);
T(18) = (-1)/(y(5)*y(5));
T(19) = getPowerDeriv(T(1),params(3)-1,2);

end
