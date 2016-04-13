declare @res int;

exec swap
@A = 10,
@B = @res output;
print @res;
