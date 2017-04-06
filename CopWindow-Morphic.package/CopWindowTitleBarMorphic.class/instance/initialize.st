as yet unclassified
initialize
	super initialize.
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapCentering: #topLeft;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 3;
		rubberBandCells: true.
	self addMorph: (CopWindowButtonMorphic new).
	self addMorph: (CopWindowCollapseButtonMorphic new).
	self addMorph: (CopWindowScaleButtonMorphic new).