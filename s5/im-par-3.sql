/*
 * In The Name Of God
 * ========================================
 * [] File Name : im-par-3.sql
 *
 * [] Creation Date : 13-04-2016
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2016 Parham Alvani.
*/
create trigger do_not_update on "Book-1" insted of delete as
print "You can not delete :)"
