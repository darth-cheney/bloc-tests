as yet unclassified
initialize
	super initialize.
	self
		color: Color transparent;
		layoutPolicy: RowLayout new;
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 12.
	self drawSlats.
	^ self.