initialization
initialize
	| spacer1 spacer2 spacer3 |
	super initialize.
	spacer1 := Morph new
		color: Color transparent;
		width: 4;
		height: 13;
		hResizing: #rigid.
	spacer2 := Morph new
		color: Color transparent;
		width: 4;
		height: 13;
		hResizing: #rigid.
	spacer3 := Morph new
		color: Color transparent;
		width: 3;
		height: 13;
		hResizing: #rigid.		
	closeButton := PlatinumWindowBarButtonMorph new.
	leftSlat := Morph new.
	rightSlat := Morph new.
	scaleButton := PlatinumWindowGrowButtonMorph new.
	minimizeButton := PlatinumWindowMinButtonMorph new.
	leftSlat
		fillStyle: (PlatinumSlatsFillStyle new);
		height: 12;
		vResizing: #rigid;
		hResizing: #spaceFill.
	rightSlat
		fillStyle: (PlatinumSlatsFillStyle new);
		height: 12;
		vResizing: #rigid;
		hResizing: #spaceFill.
	self
		height: 15;
		layoutPolicy: RowLayout new;
		listDirection: #leftToRight;
		wrapCentering: #topLeft;
		hResizing: #spaceFill;
		vResizing: #rigid;
		rubberBandCells: false;
		color: (Color r: 204 g: 204 b: 204 range: 255);
		addAllMorphs: { 
			closeButton.
			spacer1.
			leftSlat.
			rightSlat.
			spacer2.
			scaleButton.
			spacer3.
			minimizeButton }