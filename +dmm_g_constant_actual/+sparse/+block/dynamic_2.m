function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(6, 1);
  residual(1)=(y(23))-((1-params(3))*y(26)*(y(3)/y(19))^params(3));
  residual(2)=(y(20)+1/y(25))-(y(24)*y(3)+(1-params(5))*y(3)+y(23)*y(19));
  residual(3)=(params(6)/(params(7)*y(35)*y(42)))-(params(4)/(y(23)*y(25)));
  residual(4)=(y(25)*y(18))-(1);
  residual(5)=(y(24))-(params(3)*y(26)*(y(3)/y(19))^(params(3)-1));
  residual(6)=(params(6)*y(23)/y(40)*(1-params(5)+y(41)))-(1);
  T(1)=getPowerDeriv(y(3)/y(19),params(3),1);
  T(2)=getPowerDeriv(y(3)/y(19),params(3)-1,1);
if nargout > 3
    g1_v = NaN(21, 1);
g1_v(1)=(-((1-params(3))*y(26)*T(1)*1/y(19)));
g1_v(2)=(-(1-params(5)+y(24)));
g1_v(3)=(-(params(3)*y(26)*T(2)*1/y(19)));
g1_v(4)=(-((1-params(3))*y(26)*(-y(3))/(y(19)*y(19))*T(1)));
g1_v(5)=(-y(23));
g1_v(6)=(-(params(3)*y(26)*(-y(3))/(y(19)*y(19))*T(2)));
g1_v(7)=1;
g1_v(8)=(-1)/(y(25)*y(25));
g1_v(9)=(-((-(y(23)*params(4)))/(y(23)*y(25)*y(23)*y(25))));
g1_v(10)=y(18);
g1_v(11)=y(25);
g1_v(12)=(-y(3));
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=(-y(19));
g1_v(16)=(-((-(params(4)*y(25)))/(y(23)*y(25)*y(23)*y(25))));
g1_v(17)=(1-params(5)+y(41))*params(6)/y(40);
g1_v(18)=(-(params(6)*params(7)*y(35)))/(params(7)*y(35)*y(42)*params(7)*y(35)*y(42));
g1_v(19)=(-(params(6)*params(7)*y(42)))/(params(7)*y(35)*y(42)*params(7)*y(35)*y(42));
g1_v(20)=params(6)*y(23)/y(40);
g1_v(21)=(1-params(5)+y(41))*(-(params(6)*y(23)))/(y(40)*y(40));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 18);
end
end
