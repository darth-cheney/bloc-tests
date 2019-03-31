initialization
initialize
	super initialize.
	self
		color: Color transparent;
		width: 13;
		height: 13;
		vResizing: #rigid;
		hResizing: #rigid;
		addMorph: (self class newForm asMorph).