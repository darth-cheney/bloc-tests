initialization
initialize
	| h1 h2 h3 h4 |
	super initialize.
	self 
		layout: BlLinearLayout new;
		height: 10;
		background: Color transparent.
	h1 := BlElement new
		size: 1@10;
		background: (Color r: 85 g: 85 b: 85 range: 255).
	h2 := BlElement new
		size: (self width)@10;
		background: (Color r: 136 g: 136 b: 136 range: 255);
		constraintsDo: [ :c |
			c horizontal matchParent ];
		layout: (BlLinearLayout new).
	self addChildren: { h1. h2 }.
	h3 := BlElement new
		size: (self width)@9;
		background: (Color r: 221 g: 221 b: 221 range: 255);
		margin: (BlInsets top: 1 right: 0 bottom: 0 left: 1);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent  ];
		layout: (BlLinearLayout new).
	h2 addChild: h3.
	h4 := BlElement new
		background: (Color r: 187 g: 187 b: 187 range: 255);
		margin: (BlInsets top: 0 right: 1 bottom: 1 left: 0);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].
	h3 addChild: h4.
	
	
	