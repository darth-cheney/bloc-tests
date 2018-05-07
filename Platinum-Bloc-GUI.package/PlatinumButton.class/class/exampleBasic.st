examples
exampleBasic
	| space button |
	space := BlSpace new extent: 300@300.
	button := self new.
	button
		width: 100;
		height: 24;
		relocate: 100@((300 - 24)/2);
		labelString: 'Cancel'.
	space root addChild: button.
	space show.