function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dmm_g_constant.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(8) = (-y(3))/(y(20)*y(20));
T(9) = getPowerDeriv(T(1),params(3),1);
T(10) = getPowerDeriv(T(1),params(3)-1,1);
T(11) = getPowerDeriv(y(20),1-params(3),1);
T(12) = 1/y(20);
T(13) = (-y(23))/(y(20)*y(20));
T(14) = getPowerDeriv(y(3),params(3),1);
T(15) = y(27)*T(14);
end
