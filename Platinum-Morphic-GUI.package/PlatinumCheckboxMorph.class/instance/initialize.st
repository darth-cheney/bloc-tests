initialization
initialize
	super initialize.
	checked := false.
	self
		height: 12;
		width: 12;
		color: self mixedColor;
		clipSubmorphs: false.
	checkMorph := self class checkForm asMorph.
	checkMorph position: 2@1.