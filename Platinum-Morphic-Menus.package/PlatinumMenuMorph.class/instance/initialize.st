initialization
initialize
	super initialize.
	self
		borderStyle: PlatinumShadowedBorderStyle new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		color: self backgroundColor.