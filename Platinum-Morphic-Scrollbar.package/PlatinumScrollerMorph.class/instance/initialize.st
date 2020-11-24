initialization
initialize
	super initialize.
	increaseButton := Morph new
		fillStyle: (PlatinumScrollButtonFillStyle new direction: #up);
		width: 16;
		height: 16.
		"cellPositioning: #center;"
		"vResizing: #rigid;
		hResizing: #rigid"
		
	decreaseButton := Morph new
		fillStyle: (PlatinumScrollButtonFillStyle new direction: #down);
		width: 16;
		height: 16.
		"cellPositioning: #center;"
		"vResizing: #rigid;
		hResizing: #rigid"
		
	track := PlatinumScrollTrackMorph new
		listCentering: #topLeft;
		wrapCentering: #topLeft;
		cellPositioning: #topLeft.
	
	self
		color: (Color gray alpha: 0.3);
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		listCentering: #center;
		wrapCentering: #center;
"		width: 16;"
		addAllMorphs: { increaseButton. track. decreaseButton }