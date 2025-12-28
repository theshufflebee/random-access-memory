function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(23)=y(27)*y(3)^params(3)*y(20)^(1-params(3));
  y(35)=log(y(23)/y(20));
  y(29)=y(3);
  y(34)=log(y(29));
  y(36)=log(y(26));
  y(22)=y(23)-y(19);
  y(33)=log(y(20));
  y(32)=log(y(22));
  y(31)=log(y(19));
  y(30)=log(y(23));
end
