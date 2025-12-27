function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dmm_g_1_015.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(7) = getPowerDeriv(T(1),params(3),1);
T(8) = getPowerDeriv(T(1),params(3)-1,1);
T(9) = 1/y(2);
end
