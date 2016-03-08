select  "Boat-1".boat_color, "Reserve-1".weekday from "Reserve-1", "Boat-1"
	where "Boat-1".boat_name = "Reserve-1".boat_name and
		weekday like 's%';