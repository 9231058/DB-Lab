/*
 * In The Name Of God
 * ========================================
 * [] File Name : impar-3-exec.sql
 *
 * [] Creation Date : 06-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
declare @res int
exec swap
@A = 10
@B = @res output;
print @res;
