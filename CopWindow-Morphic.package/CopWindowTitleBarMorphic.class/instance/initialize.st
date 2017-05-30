initialization
initialize
	| tmp1 tmp3 tmp5 tmp7 tmp9 tmp11 tmp13 tmp15 |
	super initialize.
	title := 'Window'.
	tmp1 := TextMorph new.
	tmp1
		contents: self title;
		hResizing: #shrinkWrap;
		vResizing: #rigid.
	closeButton := CopWindowButtonMorphic new.
	tmp3 := closeButton.
	tmp3
		vResizing: #rigid;
		hResizing: #rigid.
	rightSlats := CopWindowSlatsMorphic new.
	leftSlats := CopWindowSlatsMorphic new.
	tmp5 := rightSlats.
	tmp5
		vResizing: #rigid;
		hResizing: #spaceFill.
	tmp7 := leftSlats.
	tmp7
		vResizing: #rigid;
		hResizing: #spaceFill.
	scaleButton := CopWindowScaleButtonMorphic new.
	tmp9 := scaleButton.
	tmp9
		vResizing: #rigid;
		hResizing: #rigid.
	collapseButton := CopWindowCollapseButtonMorphic new.
	tmp11 := collapseButton.
	tmp11
		vResizing: #rigid;
		hResizing: #rigid.
	tmp13 := self.
	tmp13
		layoutPolicy: RowLayout new;
		listDirection: #leftToRight;
		wrapCentering: #topLeft;
		hResizing: #shrinkWrap;
		vResizing: #rigid;
		layoutInset: 3;
		cellInset: 3;
		rubberBandCells: false.
	tmp15 := self.
	tmp15
		color:
			(Color
				r: 204
				g: 204
				b: 204
				range: 255);
		minWidth: 200;
		height: 19.
	self
		addAllMorphs:
			{closeButton.
			leftSlats.
			tmp1.
			rightSlats.
			collapseButton.
			scaleButton}