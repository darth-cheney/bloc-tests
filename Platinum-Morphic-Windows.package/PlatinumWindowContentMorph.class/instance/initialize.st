initialization
initialize
	super initialize.
	self
		color: Color white;
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		listCentering: #center;
		cellPositioning: #center;
		borderStyle: (PlatinumWinContentBorderStyle new).