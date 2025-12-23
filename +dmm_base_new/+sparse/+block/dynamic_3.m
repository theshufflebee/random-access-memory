function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(6, 1);
  residual(1)=(y(24))-((1-params(3))*y(27)*(y(3)/y(20))^params(3));
  residual(2)=(y(21)+1/y(26))-(y(25)*y(3)+(1-params(5))*y(3)+y(24)*y(20));
  residual(3)=(y(26)*y(19))-(1);
  residual(4)=(y(25))-(params(3)*y(27)*(y(3)/y(20))^(params(3)-1));
  residual(5)=(params(6)*y(24)/y(42)*(1-params(5)+y(43)))-(1);
  residual(6)=(params(6)/(y(46)*y(37)*y(44)))-(params(4)/(y(24)*y(26)));
  T(1)=getPowerDeriv(y(3)/y(20),params(3),1);
  T(2)=getPowerDeriv(y(3)/y(20),params(3)-1,1);
if nargout > 3
    g1_v = NaN(21, 1);
g1_v(1)=(-((1-params(3))*y(27)*T(1)*1/y(20)));
g1_v(2)=(-(1-params(5)+y(25)));
g1_v(3)=(-(params(3)*y(27)*T(2)*1/y(20)));
g1_v(4)=(-((1-params(3))*y(27)*(-y(3))/(y(20)*y(20))*T(1)));
g1_v(5)=(-y(24));
g1_v(6)=(-(params(3)*y(27)*(-y(3))/(y(20)*y(20))*T(2)));
g1_v(7)=1;
g1_v(8)=y(26);
g1_v(9)=(-y(3));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-y(20));
g1_v(13)=(1-params(5)+y(43))*params(6)/y(42);
g1_v(14)=(-((-(params(4)*y(26)))/(y(24)*y(26)*y(24)*y(26))));
g1_v(15)=(-1)/(y(26)*y(26));
g1_v(16)=y(19);
g1_v(17)=(-((-(y(24)*params(4)))/(y(24)*y(26)*y(24)*y(26))));
g1_v(18)=(-(params(6)*y(46)*y(44)))/(y(46)*y(37)*y(44)*y(46)*y(37)*y(44));
g1_v(19)=params(6)*y(24)/y(42);
g1_v(20)=(1-params(5)+y(43))*(-(params(6)*y(24)))/(y(42)*y(42));
g1_v(21)=(-(params(6)*y(46)*y(37)))/(y(46)*y(37)*y(44)*y(46)*y(37)*y(44));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 18);
end
end
