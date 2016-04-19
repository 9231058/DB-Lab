alter trigger in_del_on_book on "Book-1"
after insert,delete as
insert into AuditBook select
inserted.*, 0 from inserted;

insert into AuditBook select
deleted.*,1 from deleted;

