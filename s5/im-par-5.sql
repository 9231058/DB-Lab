/*
 * In The Name Of God
 * ========================================
 * [] File Name : im-par-5.sql
 *
 * [] Creation Date : 13-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
create trigger not_delete on "Book-1" instead of delete
as
print "No change was done :)"
