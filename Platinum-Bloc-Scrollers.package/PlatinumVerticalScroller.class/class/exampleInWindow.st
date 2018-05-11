example
exampleInWindow
	| space win scroller bar button |
	space := BlSpace new extent: 500@400.
	win := PlatinumWindowFrame new
		width: 300;
		height: 300;
		relocate: 100@50.
	bar := PlatinumWindowBar new.
	win addChildFirst: bar.
	
	win content 
		layout: (BlFrameLayout new).
	scroller := PlatinumVerticalScroller new.
	scroller
		constraintsDo: [ :c |
			c vertical matchParent.
			c frame horizontal alignRight. ];
		margin: (BlInsets top: -1 right: -1 bottom: -1 left: 0).
	win content addChild: scroller.
	
	button := PlatinumDefaultButton new labelString: 'Continue'.
	button 
		constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignCenter ];
		width: 100;
		height: 30.
		
	win content addChild: button.
	
	space root addChild: win.
	space show.