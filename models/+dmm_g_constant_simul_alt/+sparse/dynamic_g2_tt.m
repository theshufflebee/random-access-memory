function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = dmm_g_constant_simul_alt.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 18
    T = [T; NaN(18 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(T(1),params(3),2);
T(17) = (-1)/(y(19)*y(19));
T(18) = getPowerDeriv(T(1),params(3)-1,2);
end
