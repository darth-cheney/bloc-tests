initialization
initialize
	super initialize.
	contentMorph := PlatinumWindowContentMorph new.
	contentMorph
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	self 
		width: 300;
		height: 400;
		layoutPolicy: (TableLayout new);
		borderStyle: PlatinumWinBorderStyle new;
		color: Color transparent;
		addMorph: contentMorph;
		addMorph: PlatinumWindowTitleBarMorph new.
		