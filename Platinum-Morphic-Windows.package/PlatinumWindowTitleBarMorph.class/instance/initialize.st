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
	leftSlat := Morph new.
	rightSlat := Morph new.
	scaleButton := PlatinumWindowGrowButtonMorph new.
	minimizeButton := PlatinumWindowMinButtonMorph new.
	titleMorph := LabelMorph newLabel: 'Untitled'.
	titleMorph font: (PlatinumAssets charcoalFontSized: 8).
	titleMorph cellInset: 3.
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
			spacer4.
			titleMorph.
			spacer5.
			rightSlat.
			spacer2.
			scaleButton.
			spacer3.
			minimizeButton }