function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = y(3)/y(19);
T(2) = T(1)^params(3);
T(3) = T(1)^(params(3)-1);
T(4) = y(3)^params(3);
T(5) = y(26)*T(4);
T(6) = y(19)^(1-params(3));
T(7) = y(22)/y(19);
end
