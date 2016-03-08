create view impar as
	SELECT "Sailor-1".sailor_name, "Boat-1".boat_name, "Boat-1".boat_color
		from "Sailor-1", "Boat-1", "Reserve-1" where
		"Reserve-1".sailor_name = "Sailor-1".sailor_name and
		"Reserve-1".boat_name = "Boat-1".boat_name;