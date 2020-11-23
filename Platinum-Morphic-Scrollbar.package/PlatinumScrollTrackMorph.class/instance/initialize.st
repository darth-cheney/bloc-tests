initialization
initialize
	super initialize.
	
	thumb := PlatinumScrollThumbMorph new.
	thumb onDragDo: [ :newPos |
		self handleThumbDrag: newPos ].
		
	self
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		fillStyle: PlatinumScrollTrackFillStyle new;
		borderStyle: PlatinumScrollTrackBorderStyle new.
		
	self addMorph: thumb.