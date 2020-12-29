initialization
initialize
	| spacer1 spacer2 spacer3 spacer4 spacer5 |
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
	spacer4 := Morph new
		color: Color transparent;
		width: 4;
		height: 13;
		hResizing: #rigid.	
	spacer5 := Morph new
		color: Color transparent;
		width: 4;
		height: 13;
		hResizing: #rigid.
	closeButton := PlatinumWindowBarButtonMorph new.
	leftSlat := PlatinumWindowSlatsMorph new.
	rightSlat := PlatinumWindowSlatsMorph new.
	scaleButton := PlatinumWindowGrowButtonMorph new.
	minimizeButton := PlatinumWindowMinButtonMorph new.
	titleMorph := PlatinumLabel new.
	titleMorph fontSize: 9.
	leftSlat
		height: 12;
		vResizing: #rigid;
		hResizing: #spaceFill.
	rightSlat
		height: 12;
		vResizing: #rigid;
		hResizing: #spaceFill.
	self
		height: 15;
		layoutPolicy: TableLayout new;
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
			spacer4.
			titleMorph.
			spacer5.
			rightSlat.
			spacer2.
			scaleButton.
			spacer3.
			minimizeButton }.