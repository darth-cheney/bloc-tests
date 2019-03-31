initialization
initialize
	super initialize.
	pressed := false.
	label := LabelMorph newLabel: 'Click Me'.
	label font: (PlatinumAssets charcoalFontSized: 8).
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
		layoutInset: 2;
		width: 66;
		borderStyle: (PlatinumButtonBorderStyle new);
		fillStyle: (PlatinumButtonFillStyle new);
		addMorph: label.