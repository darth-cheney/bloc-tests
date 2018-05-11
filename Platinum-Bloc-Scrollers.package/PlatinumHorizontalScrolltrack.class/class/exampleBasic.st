examples
exampleBasic
	| space track |
	space := BlSpace new extent: 400@300.
	track := self new.
	track
		width: 150;
		relocate: 125@(286/2).
	space root addChild: track.
	space show.