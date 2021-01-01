as yet unclassified
initialize
	super initialize.
	labelMorph := StringMorph new.
	labelMorph contents: 'Untitled'.
	
	hasContents := false.
	
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 4;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color:  (Color r: 211 g: 211 b: 211 range: 255);
		addMorph: labelMorph.