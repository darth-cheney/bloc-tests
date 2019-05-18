initialization
initialize
	super initialize.
	self
		color: Color transparent;
		borderStyle: PlatinumMenuSectionBorderStyle new;
		height: 19;
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		layoutInset: -1;
		cellInset: 0.