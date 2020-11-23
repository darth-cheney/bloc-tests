initialization
initialize
	super initialize.
	
	"Left button"
	leftButton := Morph new
		fillStyle: (PlatinumScrollButtonFillStyle new direction: #left);
		width: 16;
		height: 16.
		
	rightButton := Morph new
		fillStyle: (PlatinumScrollButtonFillStyle new direction: #right);
		width: 16;
		height: 16.
		
	scrollTrack := Morph new
		fillStyle: PlatinumScrollTrackFillStyle new;
		borderStyle: PlatinumScrollTrackBorderStyle new;
		vResizing: #rigid;
		hResizing: #spaceFill;
		height: 16.
		
	thumb := Morph new
		height: 14;
		vResizing: #spaceFill;
		fillStyle: PlatinumScrollThumbFillStyle new.
	scrollTrack addMorph: thumb.
	
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		addAllMorphs: { rightButton. scrollTrack. leftButton }.
		
		