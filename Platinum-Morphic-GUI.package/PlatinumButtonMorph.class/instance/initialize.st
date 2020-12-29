initialization
initialize
	| leftSpacer rightSpacer |
	self baseColor: (Color r: 221 g: 221 b: 221 range: 255).
	leftSpacer := Morph new
		color: Color transparent;
		width: 15;
		height: 1.
	rightSpacer := Morph new
		color: Color transparent;
		width: 15;
		height: 1.
	super initialize.
	pressed := false.
	label := StringMorph new contents: 'Click Me'.
	label 
		color: Color black;
		font: (PlatinumAssets charcoalFontSized: 9).
	self
		color: Color transparent;
		layoutPolicy: (TableLayout new); 
		cellPositioning: #center;
		listDirection: #leftToRight;
		"vResizing: #shrinkWrap;"
		"hResizing: #shrinkWrap;"
		listCentering: #center;
		wrapCentering: #center;
		layoutInset: 3;
		"minHeight: 26;"
		borderStyle: (PlatinumButtonBorderStyle new);
		fillStyle: (PlatinumButtonFillStyle new);
		addMorph: leftSpacer;
		addMorph: label;
		addMorph: rightSpacer