alter trigger on_insert_book on Book
instead of insert as
print 'No change was done'