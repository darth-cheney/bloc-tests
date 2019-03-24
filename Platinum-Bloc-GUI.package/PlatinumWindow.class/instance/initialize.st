initialization
initialize
	super initialize.
	bar := PlatinumWindowBar new.
	frame := PlatinumWindowFrame new.
	frame
		width: self width;
		height: self height;
		addChildFirst: bar.
	frame content layout: (BlFrameLayout new).
	self addChild: frame.