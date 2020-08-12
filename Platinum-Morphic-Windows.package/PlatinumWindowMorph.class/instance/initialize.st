initialization
initialize
	super initialize.
	titleBar := PlatinumWindowTitleBarMorph new.
	self initializeButtonHandlers.
	contentMorph := PlatinumWindowContentMorph new.
	self 
		layoutPolicy: TableLayout new;
		borderStyle: PlatinumWinBorderStyle new;
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorph: contentMorph;
		addMorph: titleBar.
		