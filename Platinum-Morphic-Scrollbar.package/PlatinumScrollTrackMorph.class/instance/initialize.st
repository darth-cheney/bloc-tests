initialization
initialize
	super initialize.
	
	thumb := PlatinumScrollThumbMorph new
		width: 14;
		onDragDo: [ :newPos |
		self handleThumbDrag: newPos ].
	
	inner := Morph new
		color: Color transparent;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
		
	inner addMorph: thumb.
		
	self
		layoutPolicy: TableLayout new;
		vResizing: #spaceFill;
		hResizing: #rigid;
		width: 16;
		borderStyle: PlatinumScrollTrackBorderStyle new.
		
	self addMorph: inner.