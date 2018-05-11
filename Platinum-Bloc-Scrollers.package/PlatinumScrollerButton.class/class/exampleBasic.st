examples
exampleBasic
	| space button |
	space := BlSpace new extent: 200@200.
	button := self new.
	button relocate: (184/2)@(184/2).
	space root addChild: button.
	space show.