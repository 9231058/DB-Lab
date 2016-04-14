create trigger do_not_delete on database for drop_table as
print 'Hello';
rollback;