function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(22)=y(26)*y(3)^params(3)*y(19)^(1-params(3));
  y(33)=log(y(22)/y(19));
  y(27)=y(3);
  y(32)=log(y(27));
  y(34)=log(y(25));
  y(21)=y(22)-y(18);
  y(31)=log(y(19));
  y(30)=log(y(21));
  y(29)=log(y(18));
  y(28)=log(y(22));
end
