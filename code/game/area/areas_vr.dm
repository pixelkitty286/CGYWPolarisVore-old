/area/shuttle_arrived()
	.=..()
	for(var/obj/machinery/telecomms/relay/R in contents)
		R.reset_z()
	for(var/obj/machinery/power/apc/A in contents)
		A.update_area()