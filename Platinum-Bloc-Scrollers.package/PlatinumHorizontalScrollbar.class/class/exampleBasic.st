examples
exampleBasic
	| space bar |
	space := BlSpace new extent: 400@300.
	bar := self new.
	bar
		width: 100;
		relocate: 150@(286/2).
	space root addChild: bar.
	space show.