$ ->
	# Setup the $cf namespace
	if ! window.$cf?
		window.$cf = {}


	##################################################################################
	# Makes and Models - map of string -> array
	##################################################################################
	$cf.makesModels =
		"Abarth":         ["500"]
		"AC":             ["Cobra"]
		"Alfa Romeo":     ["145", "146", "147", "156", "159", "166", "Brera", "Giulietta", "GT", "GTV", "Mito", "Spider"]
		"Aston Martin":   ["DB7", "DB9", "V8"]
		"Audi":           ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "Allroad", "Cabriolet", "Q3", "Q5", "Q7", "R8", "RS3", "RS4", "RS6", "S3", "S4", "S5", "S6", "TT"]
		"Austin":         ["1100", "Healey", "Mini"]
		"Beauford":       ["Other"]
		"Bentley":        ["Arnage", "Continental", "Eight", "R-type", "Series 1", "T Series", "Turbo R"]
		"BMW":            ["1 Series", "2002", "3 Series", "5 Series", "6 Series", "7 Series", "8 Series", "M3", "M5", "M6", "X1", "X3", "X5", "X6", "Z3", "Z4", "{Model unknown}"]
		"Cadillac":       ["BLS", "De Ville", "Dts", "Eldorado", "Escalade Suv"]
		"Chevrolet":      ["Aveo", "Camaro", "Captiva", "Corvette", "Cruze", "Epica", "Kalos", "Kyron", "Lacetti", "Matiz", "Nubira", "Other", "Rexton", "Rodius", "Spark", "Tacuma"]
		"Chrysler":       ["300C", "Cherokee", "Crossfire", "Delta", "Grand Cherokee", "Grand Voyager", "PT Cruiser", "Sebring", "Voyager", "Ypsilon", "{Model unknown}"]
		"Citroen":        ["Berlingo", "Berlingo Multispace", "C-Crosser", "C1", "C2", "C3", "C3 Pluriel", "C4", "C4 Grand Picasso", "C4 Picasso", "C5", "C6", "C8", "CX", "Dispatch Combi", "DS", "DS3", "DS4", "Ds5", "Nemo", "Nemo Multispace", "Other", "Picasso", "Saxo", "Synergie", "Xantia", "Xsara", "Xsara Picasso", "{Model unknown}"]
		"Dacia":          ["Duster", "Sandero"]
		"Daewoo":         ["Kalos", "Lacetti", "Lanos", "Leganza", "Matiz", "Musso", "Nubira", "Rexton", "Tacuma"]
		"Daihatsu":       ["Charade", "Copen", "Cuore", "FOURTRAK", "Mira", "Sirion", "Sportrak", "Terios"]
		"Daimler":        ["Limousine", "Majestic"]
		"Datsun":         ["240Z"]
		"Dodge":          ["Caliber", "Caravan", "Journey", "Nitro", "Other", "Ram"]
		"Ferrari":        ["360", "400", "599 Gtb", "California", "F355", "F430"]
		"Fiat":           ["500", "600", "Barchetta", "Brava", "Bravo", "Cinquecento", "Coupe", "Croma", "Doblo", "Fiorino", "Grande Punto", "Idea", "Marea", "Multipla", "Other", "Panda", "Punto", "Qubo", "Scudo", "Scudo Combi", "Sedici", "Seicento", "Stilo", "Ulysse", "X1/9", "{Model unknown}"]
		"Ford":           ["B-Max", "C-Max", "Capri", "Cortina", "Cougar", "Escort", "Explorer", "F-Series", "F150", "Fiesta", "Focus", "Focus C-Max", "Fusion", "Galaxy", "Grand C-max", "GT", "Ka", "Kuga", "Model Y", "Mondeo", "Mustang", "Probe", "Puma", "Ranger", "S-Max", "StreetKa", "Tourneo Connect", "Transit Torneo"]
		"Gwm":            ["Steed"]
		"Hillman":        ["Avenger"]
		"Honda":          ["Accord", "Beat", "Civic", "CR-V", "Cr-x", "CR-Z", "Fit", "FR-V", "HR-V", "Insight", "Integra", "Jazz", "Legend", "Prelude", "S2000", "Shuttle", "Stepwagon", "Stream", "{Model unknown}"]
		"Humber":         ["Hawk"]
		"Hummer":         ["H2", "H3"]
		"Hyundai":        ["Accent", "Atoz", "Coupe", "Elantra", "Getz", "Grandeur", "H1", "i10", "I130", "i20", "i30", "i40", "ix20", "ix35", "Lantra", "Matrix", "Montana", "Santa Fe", "Sonata", "Terracan", "Trajet", "Tucson", "Veloster", "XG", "{Model unknown}"]
		"Isuzu":          ["D-Max", "Rodeo", "Trooper", "{Model unknown}"]
		"Jaguar":         ["E-Type", "S-Type", "Sovereign", "X-Type", "XF", "Xj", "Xj6", "Xjs", "Xk", "Xkr", "{Model unknown}"]
		"Jeep":           ["Cherokee", "Commander", "Compass", "Grand Cherokee", "Patriot", "Wrangler"]
		"Jensen":         ["Interceptor"]
		"KIA":            ["Carens", "Carnival", "Ceed", "Cerato", "Magentis", "Mentor", "Optima", "Picanto", "Pregio", "pro_ceed", "Rio", "Sedona", "Shuma", "Sorento", "Soul", "Sportage", "Venga", "{Model unknown}"]
		"Lancia":         ["Delta"]
		"Land Rover":     ["Defender", "Discovery", "Freelander", "Range Rover", "Range Rover Evoque", "Range Rover Sport"]
		"Lexus":          ["CT200H", "GS300", "GS450H", "Is", "IS200", "IS220", "IS250", "Ls", "LS400", "LS430", "LS460", "LS600H", "RX300", "RX350", "RX400", "RX400H", "RX450H", "SC430"]
		"Leyland":        ["{Model unknown}"]
		"Lincoln":        ["Continental", "Town Car"]
		"Lola":           ["A1GP"]
		"Lotus":          ["Cortina", "Elise", "Esprit"]
		"Maserati":       ["Granturismo", "Merak", "Quattroporte"]
		"Mazda":          ["121", "323", "626", "B-Series", "Bt-50", "CX-5", "CX-7", "Demio", "Mazda2", "Mazda3", "Mazda5", "Mazda6", "MPV", "MX-5", "MX-6", "Premacy", "RX8", "Tribute", "Xedos 9", "{Model unknown}"]
		"Mercedes-Benz":  ["180", "190", "200", "219", "220", "230", "240", "250", "280", "300", "320", "380", "420", "450", "500", "A-Class", "B-Class", "C-Class", "CL-Class", "CLK-Class", "CLS-Class", "E-Class", "G-Class", "GL-Class", "M-Class", "R-Class", "S-Class", "SEC-Class", "SL-Class", "SLK-Class", "V-Class", "Vaneo", "Viano", "Vito", "Vito Combi", "{Model unknown}"]
		"MG":             ["Magnette", "MGA", "MGB", "MGF", "TF", "ZR", "ZS"]
		"MINI":           ["Austin", "Clubman", "Clubvan", "Convertible", "Cooper", "Cooper S", "Countryman", "Coupe", "First", "Hatch", "One", "Roadster"]
		"Mitsubishi":     ["ASX", "Carisma", "Colt", "Eclipse", "FTO", "Galant", "Grandis", "GTO", "I-miev", "L200", "Lancer", "Mirage", "Outlander", "Pajero", "Shogun", "Shogun Pinin", "Space Star", "Space Wagon", "{Model unknown}"]
		"Morgan":         ["4/4 1600", "Plus 4"]
		"Morris":         ["Oxford"]
		"Nissan":         ["200sx", "350Z", "370Z", "Almera", "Almera Tino", "Bluebird", "Cefiro", "Cube", "Figaro", "GT-R", "Juke", "Leaf", "March", "Maxima", "Micra", "Mistral", "Murano", "Navara", "Note", "Nv200", "Other", "Pathfinder", "Patrol", "Pixo", "President", "Primastar", "Primera", "Pulsar", "Qashqai", "Qashqai +2", "Serena", "Silvia", "Skyline", "Terrano", "Tiida", "X-Trail", "{Model unknown}"]
		"NSU":            ["ro80"]
		"Opel":           ["Agila", "Antara", "Astra", "Calibra", "Combo", "Corsa", "Frontera", "Insignia", "Meriva", "Mokka", "Nova", "Omega", "Signum", "Tigra", "Vectra", "Vivaro", "Zafira", "{Model unknown}"]
		"Panther":        ["Kallista", "{Model unknown}"]
		"Perodua":        ["Myvi"]
		"Peugeot":        ["1007", "106", "107", "205", "206", "207", "208", "3008", "306", "307", "308", "4007", "405", "406", "407", "5008", "508", "607", "806", "807", "Bipper", "Expert", "Expert Tepee", "Partner", "Partner Combi", "RCZ", "{Model unknown}"]
		"Porsche":        ["356", "911", "924", "928", "944", "Boxster", "Cayenne", "Cayman", "Panamera"]
		"Proton":         ["Compact"]
		"Reliant":        ["Robin"]
		"Renault":        ["15", "5", "Clio", "Espace", "Fluence", "Grand Espace", "Grand Modus", "Grand Scenic", "Kangoo", "Koleos", "Laguna", "Megane", "Megane Scenic", "Modus", "Other", "Safrane", "Scenic", "Twingo", "Vel Satis", "WIND", "ZOE", "{Model unknown}"]
		"Rolls-Royce":    ["Corniche", "Phantom", "Silver Shadow", "Silver Spirit", "Silver Spur"]
		"Rover":          ["200", "25", "400", "45", "600", "75", "800", "City Rover", "MGF", "Mini", "P4", "P5", "P6", "StreetWise"]
		"Saab":           ["9-3", "9-5", "900", "9000"]
		"SEAT":           ["Alhambra", "Altea", "Altea XL", "Arosa", "Cordoba", "Exeo", "Ibiza", "Inca", "Leon", "Mii", "Toledo", "Vario", "{Model unknown}"]
		"Skoda":          ["Citigo", "Fabia", "Felicia", "Octavia", "Rapid", "Roomster", "S100", "Superb", "Yeti"]
		"Smart":          ["forfour", "Fortwo", "Passion", "Roadster"]
		"Ssangyong":      ["Actyon", "Korando", "Kyron", "Rexton", "Rodius"]
		"Subaru":         ["Forester", "Impreza", "Justy", "Legacy", "Outback", "SVX", "Tribeca", "Xv"]
		"Suzuki":         ["Alto", "Baleno", "Escudo", "Grand Vitara", "Ignis", "Jimny", "Liana", "Splash", "Swift", "SX4", "Vitara", "Wagon R", "Wagon R+"]
		"Tata":           ["TL"]
		"Toyota":         ["Altezza", "Auris", "Avensis", "Avensis Verso", "Aygo", "Camry", "Carina", "Celica", "Chaser", "Corolla", "Corolla Verso", "Crown", "Cynos", "Estima", "GT86", "Harrier", "Highlander", "Hilux", "Ipsum", "iQ", "Landcruiser", "Levin", "Lucida", "MR2", "MRS", "Other", "Picnic", "Previa", "Prius", "Rav4", "Soarer", "Starlet", "Starlet Glanza V", "Supra", "Townace", "Urbancruiser", "Verso", "Verso-s", "Vitz", "Yaris", "Yaris Verso", "{Model unknown}"]
		"Triumph":        ["Other", "Stag"]
		"TVR":            ["2500m", "Tuscan"]
		"Vauxhall":       ["Astra", "Corsa", "Frontera", "Insignia", "Meriva", "Omega", "Tigra", "Vectra", "Viva", "Vivaro", "Zafira"]
		"Volkswagen":     ["Amarok", "Beetle", "Bora", "Caddy", "Caddy Life", "Caddy Maxi C20", "Caddy Maxi Life", "Caravelle", "Cc", "Corrado", "Eos", "Fox", "Golf", "Golf Plus", "Jetta", "Karmann Ghia", "Lupo", "Other", "Passat", "Passat CC", "Phaeton", "Polo", "Scirocco", "Sharan", "T5", "Tiguan", "Touareg", "Touran", "Up!", "{Model unknown}"]
		"Volvo":          ["240", "C30", "C70", "S40", "S60", "S70", "S80", "V40", "V50", "V60", "V70", "V90", "XC60", "XC70", "XC90"]
		"Westfield":      ["SE"]
		"Wolseley":       ["Other"]
		"{Make unknown}": []

	##################################################################################
	# Car Makes - build an array based on $cf.makesModels
	##################################################################################
	$cf.makes = []
	for make of $cf.makesModels
		$cf.makes.push make

	##################################################################################
	# Financial Institutions
	##################################################################################
	$cf.financial_institutions = [
		"ACC BANK",
		"ANGLO-IRISH BANKCORP",
		"AIB BANK PLC",
		"BOI FINANCE",
		"BANK OF IRELAND",
		"CANADA LIFE",
		"CALEDONIAN ASS.",
		"CREDIT UNION",
		"EBS",
		"FIRST NATIONAL B.S.",
		"GOODBODY S/BROKERS",
		"ICC",
		"IR CIVIL SERVICE B.S.",
		"IRISH LIFE ASSURANCE",
		"IRISH LIFE B.S.",
		"IRISH NATIONWIDE B.S",
		"IRISH PERMANENT B.S.",
		"LOCAL AUTHORITY",
		"LIFETIME",
		"LOMBARD &amp; ULSTER",
		"MISCELLANEOUS",
		"NCB GROUP",
		"NIB/NORTHERN BANK",
		"NORWICH IRISH B.S.",
		"NEW IRELAND ASS.",
		"NORWICH UNION ASS.",
		"OTHER STOCKBROKERS",
		"OTHER STATE INST.",
		"OTHER BANKS",
		"OTH FINANCE/LEASING",
		"OTH LIFE ASSURANCE",
		"OTH BLD. SOCIETIES",
		"PREMIER BANKING",
		"POST OFFICE",
		"PRU LIFE ASSURANCE",
		"RIADA &amp; CO",
		"SMURFIT FINANCE",
		"SOLOMONS",
		"STANDARD LIFE ASS.",
		"STATE INSTITUTIONS",
		"TSB BANK",
		"ULSTER BANK",
		"UNKNOWN",
		"WOODCHESTER BANK"
	];