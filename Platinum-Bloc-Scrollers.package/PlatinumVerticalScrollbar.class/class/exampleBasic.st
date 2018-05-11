examples
exampleBasic
	| space bar |
	space := BlSpace new extent: 400@300.
	bar := PlatinumVerticalScrollbar new.
	bar
		height: 100;
		relocate: (386/2)@100.
	space root addChild: bar.
	space show.