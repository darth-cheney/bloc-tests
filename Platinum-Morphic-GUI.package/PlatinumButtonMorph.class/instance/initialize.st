initialization
initialize
	super initialize.
	pressed := false.
	label := LabelMorph newLabel: 'Click Me'.
	label font: (FreeTypeFont fromBytes: (self class labelFontBytes) pointSize: 9).
	self
		layoutPolicy: (TableLayout new); 
		cellPositioning: #center;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listCentering: #center;
		wrapCentering: #center;
		layoutInset: 5;
		width: 66;
		height: 20;
		borderStyle: (PlatinumButtonBorderStyle new);
		fillStyle: (PlatinumButtonFillStyle new);
		addMorph: label.