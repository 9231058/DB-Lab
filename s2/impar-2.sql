
create table "Reserve-1"(
	sailor_name int,
	boat_name varchar(20),
	weekday varchar(255),
	primary key (sailor_name, boat_name),
	foreign key (boat_name) references "Boat-1"(boat_name),
 	foreign key (sailor_name) references "Sailor-1"(sailor_name),
);