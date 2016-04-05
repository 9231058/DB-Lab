SELECT  FirstName,LastName,Full_address = (case P_id 
	when 1 then 'Jomhori' 
	when 2 then 'Enghelab'
	when 3 then 'Felestin'
	else 'Ferdowsi'
	end ) FROM "persons-1";