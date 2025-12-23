function [y, T] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5)=y(9)*y(3)^params(3)*y(2)^(1-params(3));
  y(17)=log(y(5)/y(2));
  y(11)=y(3);
  y(16)=log(y(11));
  y(18)=log(y(8));
  y(4)=y(5)-y(1);
  y(15)=log(y(2));
  y(14)=log(y(4));
  y(13)=log(y(1));
  y(12)=log(y(5));
end
