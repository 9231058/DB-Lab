create table "Sailor-1" (
	Sailor_name int primary key identity(200,1),
	Sailor_rank int default 5 not null
);

create table "Boat-1"(
	boat_name varchar(20) primary key,
	boat_color varchar(30),
	boat_rank int,
	constraint boat_rank_limit check (boat_rank > 70 and boat_rank < 150)
);