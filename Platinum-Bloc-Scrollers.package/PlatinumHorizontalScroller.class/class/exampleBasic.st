examples
exampleBasic
	| space scroller |
	space := BlSpace new extent: 400@300.
	scroller := self new.
	scroller
		width: 175;
		relocate: (225/2)@(184).
	scroller scrollbar width: 60.
	space root addChild: scroller.
	space show.