initialization
initialize
	super initialize.
	self toggleStickiness. "Ensure that mouse events dont' move the morph"
	titleBar := PlatinumWindowTitleBarMorph new.
	titleBar
		onDragMove: [ :delta |
			self position: (self position + delta) ].
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
		