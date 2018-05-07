example
exampleInWindow
	| space win button |
	space := BlSpace new extent: 500@400.
	win := PlatinumWindowFrame new.
	win
		width: 250;
		height: 200;
		addChildFirst: (PlatinumWindowBar new);
		relocate: 125@100.
	win content layout: (BlFrameLayout new).
	button := self new.
	button
		width: 100;
		height: 30;
		labelString: 'Click!';
		constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignCenter ].
	win content addChild: button.
	space root addChild: win.
	space show.