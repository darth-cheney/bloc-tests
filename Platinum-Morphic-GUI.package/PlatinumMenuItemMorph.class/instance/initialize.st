initialization
initialize
	super initialize.
	label := LabelMorph newLabel: '(Unset Item)'.
	label 
		font: (PlatinumAssets charcoalFontSized: 9);
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	self
		color: Color transparent;
		layoutPolicy: RowLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		addMorph: label;
		addMorph: (Morph new
			color: Color transparent;
			width: 22;
			vResizing: #spaceFill).