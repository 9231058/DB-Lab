create function get_max_intrest ()
returns int
as begin
declare @max int
select @max = account_1.account_number
from account_1 where max(account_1.intrest_rate) = account_1.intrest_rate;
return @max
end