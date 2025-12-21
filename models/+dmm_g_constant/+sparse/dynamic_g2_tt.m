function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = dmm_g_constant.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(16) = y(46)*y(37)*y(44)*y(46)*y(37)*y(44)*y(46)*y(37)*y(44)*y(46)*y(37)*y(44);
T(17) = getPowerDeriv(T(1),params(3),2);
T(18) = (-1)/(y(20)*y(20));
T(19) = getPowerDeriv(T(1),params(3)-1,2);
end
