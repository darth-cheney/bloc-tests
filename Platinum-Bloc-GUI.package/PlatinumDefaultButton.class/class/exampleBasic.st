examples
exampleBasic
	| space button |
	space := BlSpace new extent: 500@400.
	button := self new
		width: 100;
		height: 30;
		relocate: 200@180.
	space root addChild: button.
	space show.