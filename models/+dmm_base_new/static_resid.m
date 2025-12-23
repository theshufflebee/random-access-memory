function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = dmm_base_new.static_resid_tt(T, y, x, params);
end
residual = zeros(18, 1);
    residual(1) = (params(6)*(1-params(5)+y(7))) - (1);
    residual(2) = (params(6)/(y(10)*y(1)*y(8))) - (params(4)/(y(6)*y(8)));
    residual(3) = (y(1)*y(8)) - (1);
    residual(4) = (y(3)+1/y(8)) - (y(7)*y(3)+(1-params(5))*y(3)+y(6)*y(2));
    residual(5) = (y(6)) - ((1-params(3))*y(9)*T(2));
    residual(6) = (y(7)) - (params(3)*y(9)*T(3));
    residual(7) = (y(5)) - (T(5)*T(6));
    residual(8) = (y(4)) - (y(5)-y(1));
    residual(9) = (log(y(9))) - (log(y(9))*params(1)+x(1));
    residual(10) = (log(y(10))) - ((1-params(2))*log(params(7))+log(y(10))*params(2)+x(2));
    residual(11) = (y(11)) - (y(3));
    residual(12) = (y(12)) - (log(y(5)));
    residual(13) = (y(13)) - (log(y(1)));
    residual(14) = (y(14)) - (log(y(4)));
    residual(15) = (y(15)) - (log(y(2)));
    residual(16) = (y(16)) - (log(y(11)));
    residual(17) = (y(17)) - (log(y(5)/y(2)));
    residual(18) = (y(18)) - (log(y(8)));

end
