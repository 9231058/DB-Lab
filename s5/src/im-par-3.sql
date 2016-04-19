alter trigger do_not_update on "Book-1" after update as
rollback;