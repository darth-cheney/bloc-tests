initialization
initialize
	super initialize.
	pressed := false.
	label := LabelMorph newLabel: 'Click Me'.
	label font: (PlatinumAssets charcoalFontSized: 9).
	self
		layoutPolicy: (TableLayout new); 
		cellPositioning: #center;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		vResizing: #shrinkWrap;
		listCentering: #center;
		wrapCentering: #topLeft;
		layoutInset: 3;
		minHeight: 26;
		borderStyle: (PlatinumButtonBorderStyle new);
		fillStyle: (PlatinumButtonFillStyle new);
		addMorph: label.