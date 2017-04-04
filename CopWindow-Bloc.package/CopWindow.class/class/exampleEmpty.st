examples
exampleEmpty
	| win space |
	space := BlSpace new extent: 500@500.
	win := self new.
	win
		position: 100@100.
	space root addChild: win.
	space show.
	^ win.