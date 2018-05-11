examples
exampleBasic
	| space scroller |
	space := BlSpace new extent: 400@300.
	scroller := self new.
	scroller
		height: 175;
		relocate: (384/2)@(125/2).
	scroller scrollbar height: 60.
	space root addChild: scroller.
	space show.