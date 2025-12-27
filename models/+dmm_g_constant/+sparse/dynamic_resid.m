function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = dmm_g_constant.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(18, 1);
    residual(1) = (params(6)*y(24)/y(42)*(1-params(5)+y(43))) - (1);
    residual(2) = (params(6)/(y(46)*y(37)*y(44))) - (params(4)/(y(24)*y(26)));
    residual(3) = (y(26)*y(19)) - (1);
    residual(4) = (y(21)+1/y(26)) - (y(25)*y(3)+(1-params(5))*y(3)+y(24)*y(20));
    residual(5) = (y(24)) - ((1-params(3))*y(27)*T(2));
    residual(6) = (y(25)) - (params(3)*y(27)*T(3));
    residual(7) = (y(23)) - (T(5)*T(6));
    residual(8) = (y(22)) - (y(23)-y(19));
    residual(9) = (log(y(27))) - (params(1)*log(y(9))+x(1));
    residual(10) = (log(y(28))) - (params(2)*log(y(10))+(1-params(2))*log(params(7))+x(2));
    residual(11) = (y(29)) - (y(3));
    residual(12) = (y(30)) - (log(y(23)));
    residual(13) = (y(31)) - (log(y(19)));
    residual(14) = (y(32)) - (log(y(22)));
    residual(15) = (y(33)) - (log(y(20)));
    residual(16) = (y(34)) - (log(y(29)));
    residual(17) = (y(35)) - (log(T(7)));
    residual(18) = (y(36)) - (log(y(26)));
end
