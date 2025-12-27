function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = dmm_g_1_15.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(18, 1);
    residual(1) = (params(6)*(1-params(5)+y(7))) - (1);
    residual(2) = (params(6)/(y(10)*y(1)*y(8))) - (params(4)/(y(6)*y(8)));
    residual(3) = (y(1)*y(8)) - (1);
    residual(4) = (y(3)+1/y(8)) - (y(7)*y(3)+(1-params(5))*y(3)+y(6)*y(2));
    residual(5) = (y(6)) - ((1-params(3))*y(9)*T(2));
    residual(6) = (y(7)) - (params(3)*y(9)*T(3));
    residual(7) = (y(5)) - (T(5)*T(6));
    residual(8) = (y(4)) - (y(5)-y(1));
    residual(9) = (log(y(9))) - (log(y(9))*params(1)+x(1));
    residual(10) = (log(y(10))) - (log(y(10))*params(2)+(1-params(2))*log(params(7))+x(2));
    residual(11) = (y(11)) - (y(3));
    residual(12) = (y(12)) - (log(y(5)));
    residual(13) = (y(13)) - (log(y(1)));
    residual(14) = (y(14)) - (log(y(4)));
    residual(15) = (y(15)) - (log(y(2)));
    residual(16) = (y(16)) - (log(y(11)));
    residual(17) = (y(17)) - (log(y(5)/y(2)));
    residual(18) = (y(18)) - (log(y(8)));
end
