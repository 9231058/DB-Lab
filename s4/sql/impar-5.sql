
insert into PostalCode values (
	'Michael',
	'Blythe',
	98027
);

insert into PostalCode values (
	'Linda',
	'Mitchell',
	98027
);

insert into PostalCode values (
	'Jillian',
	'Carson',
	98027
);

insert into PostalCode values (
	'Garrett',
	'Vargas',
	98027
);

insert into PostalCode values (
	'Tsvi',
	'Reiter',
	98027
);

insert into PostalCode values (
	'Shu',
	'Ito',
	98055
);

insert into PostalCode values (
	'Jose',
	'Saraiva',
	98055
);

insert into PostalCode values (
	'Tete',
	'Mensa-Annan',
	98055
);

insert into PostalCode values (
	'Lynn',
	'Tsofilias',
	98055
);

insert into PostalCode values (
	'Rachel',
	'Valdez',
	98055
);

insert into PostalCode values (
	'Jae',
	'Pak',
	98055
);

insert into PostalCode values (
	'Ranjit',
	'Varkey Chudukatil',
	98055
);

select FirstName, LastName
	,row_number() over (order by p.PostalCode) as "Row Number"
	,rank() over (order by p.PostalCode) as Rank
	,dense_rank() over (order by p.PostalCode) as "Dense Rank"
	from PostalCode as p;