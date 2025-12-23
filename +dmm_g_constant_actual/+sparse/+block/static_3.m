function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1)*y(8))-(1);
  residual(2)=(y(3)+1/y(8))-(y(7)*y(3)+(1-params(5))*y(3)+y(6)*y(2));
  residual(3)=(y(6))-((1-params(3))*y(9)*(y(3)/y(2))^params(3));
  residual(4)=(y(7))-(params(3)*y(9)*(y(3)/y(2))^(params(3)-1));
  residual(5)=(params(6)/(params(7)*y(1)*y(8)))-(params(4)/(y(6)*y(8)));
  T(2)=getPowerDeriv(y(3)/y(2),params(3),1);
  T(3)=getPowerDeriv(y(3)/y(2),params(3)-1,1);
if nargout > 3
    g1_v = NaN(14, 1);
g1_v(1)=y(8);
g1_v(2)=(-(params(6)*params(7)*y(8)))/(params(7)*y(1)*y(8)*params(7)*y(1)*y(8));
g1_v(3)=y(1);
g1_v(4)=(-1)/(y(8)*y(8));
g1_v(5)=(-(params(6)*params(7)*y(1)))/(params(7)*y(1)*y(8)*params(7)*y(1)*y(8))-(-(y(6)*params(4)))/(y(6)*y(8)*y(6)*y(8));
g1_v(6)=1-(1-params(5)+y(7));
g1_v(7)=(-((1-params(3))*y(9)*T(2)*1/y(2)));
g1_v(8)=(-(params(3)*y(9)*T(3)*1/y(2)));
g1_v(9)=(-y(6));
g1_v(10)=(-((1-params(3))*y(9)*(-y(3))/(y(2)*y(2))*T(2)));
g1_v(11)=(-(params(3)*y(9)*(-y(3))/(y(2)*y(2))*T(3)));
g1_v(12)=(-y(2));
g1_v(13)=1;
g1_v(14)=(-((-(y(8)*params(4)))/(y(6)*y(8)*y(6)*y(8))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
