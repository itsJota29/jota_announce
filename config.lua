Config = {}

Config.okokNotify = true -- Put on false if you don't have okokNotify.


Config.ems = {

	enable = true,
	label = "LSFD",
	label2 = "Global Announce",
	message = "We are in service, remember that you can call us for any emergency or go to the hospital!",
	time = 7500,

	job = "ambulance"

}

Config.mechanic = {

	enable = true,
	label = "Mechanic",
	label2 = "Global Announce",
	message = "We are in service, remember that you can call us for any road assistance or come to tune your vehicles!",
	time = 7500,

	job = "mechanic"

}

Config.taxi = {

	enable = true,
	label = "Taxi",
	label2 = "Global Announce",
	message = "We are in service, remember that you can call us for any transport!",
	time = 7500,

	job = "taxi"

}

Config.police = {

	enable = true,
	label = "LSPD",
	label2 = "Global Announce",
	message = "We are in service, remember that you can look for us at the police station or call us for any type of emergency!",
	time = 7500,

	job = "police"

}

Config.Error = {

	label = "ERROR",
	message = "You do not belong to this faction or you are not on duty.",
	time = 7500

}