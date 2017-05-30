initialization
initialize
	| tmp2 tmp4 tmp6 tmp8 tmp10 tmp12 |
	super initialize.
	tmp2 := self.
	tmp2
		color: Color white;
		borderColor: Color black;
		hasDropShadow: true;
		borderWidth: 1;
		width: 250;
		height: 400;
		minHeight: 22;
		minWidth: 210;
		layoutPolicy: TableLayout new;
		layoutInset: 1.
	innerWrapper := Morph new.
	tmp4 := innerWrapper.
	tmp4
		color: Color white;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		cellInset: -2;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	titleBar := CopWindowTitleBarMorphic new.
	tmp6 := titleBar.
	tmp6
		hResizing: #spaceFill;
		vResizing: #rigid.
	contentArea := Morph new.
	tmp8 := contentArea.
	tmp8
		layoutPolicy: ProportionalLayout new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellInset: 3;
		color:
			(Color
				r: 204
				g: 204
				b: 204
				range: 255).
	content := BorderedMorph new.
	tmp10 := content.
	tmp10
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	tmp12 := LayoutFrame new.
	tmp12
		rightOffset: -1;
		leftOffset: 1.
	tmp10
		layoutFrame: (tmp12 bottomOffset: -1);
		color: Color gray lighter lighter lighter.
	contentArea addMorph: content.
	innerWrapper
		addAllMorphs:
			{titleBar.
			contentArea}.
	self addMorph: innerWrapper