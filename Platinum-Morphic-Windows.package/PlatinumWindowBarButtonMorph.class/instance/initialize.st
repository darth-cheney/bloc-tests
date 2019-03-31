initialization
initialize
	super initialize.
	form := self class newForm.
	pressedForm := self class newPressedForm.
	self
		color: Color transparent;
		width: 13;
		height: 13;
		vResizing: #rigid;
		hResizing: #rigid;
		addMorph: (form asMorph).