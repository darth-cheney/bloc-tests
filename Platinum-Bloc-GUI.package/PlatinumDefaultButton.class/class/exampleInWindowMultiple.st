as yet unclassified
exampleInWindowMultiple
	| space win button buttonDefault |
	space := BlSpace new extent: 500@400.
	win := PlatinumWindowFrame new.
	win
		width: 250;
		height: 200;
		addChildFirst: (PlatinumWindowBar new);
		relocate: 125@100.
	win content layout: (BlGridLayout new 
		cellSpacing: 10;
		columnCount: 2;
		rowCount: 1;
		alignBounds;
		vertical).
	win content padding: (BlInsets top: 50).
	button := PlatinumButton new
		width: 100;
		height: 24;
		labelString: 'Cancel';
		constraintsDo: [ :c |
			c grid vertical alignCenter ].
	buttonDefault := self new
		width: 100;
		height: 30;
		labelString: 'Confirm';
		constraintsDo: [ :c |
			c grid vertical alignCenter ].
		
	win content addChild: button.
	win content addChild: buttonDefault.
	space root addChild: win.
	space show.