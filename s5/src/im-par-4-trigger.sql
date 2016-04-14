create trigger on_ins_book_view on view_book
instead of insert
as update "Book-1" set QTY = 1000 where QTY < 1000;