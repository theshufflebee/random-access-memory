function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = dmm_g_constant_actual.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(17, 1);
    residual(1) = (params(6)*y(23)/y(40)*(1-params(5)+y(41))) - (1);
    residual(2) = (params(6)/(params(7)*y(35)*y(42))) - (params(4)/(y(23)*y(25)));
    residual(3) = (y(25)*y(18)) - (1);
    residual(4) = (y(20)+1/y(25)) - (y(24)*y(3)+(1-params(5))*y(3)+y(23)*y(19));
    residual(5) = (y(23)) - ((1-params(3))*y(26)*T(2));
    residual(6) = (y(24)) - (params(3)*y(26)*T(3));
    residual(7) = (y(22)) - (T(5)*T(6));
    residual(8) = (y(21)) - (y(22)-y(18));
    residual(9) = (log(y(26))) - (params(1)*log(y(9))+x(1));
    residual(10) = (y(27)) - (y(3));
    residual(11) = (y(28)) - (log(y(22)));
    residual(12) = (y(29)) - (log(y(18)));
    residual(13) = (y(30)) - (log(y(21)));
    residual(14) = (y(31)) - (log(y(19)));
    residual(15) = (y(32)) - (log(y(27)));
    residual(16) = (y(33)) - (log(T(7)));
    residual(17) = (y(34)) - (log(y(25)));
end
