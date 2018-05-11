examples
exampleBasic
	| space track |
	space := BlSpace new extent: 400@300.
	track := PlatinumVerticalScrolltrack new.
	track
		height: 150;
		relocate: ((386/2)@100).
	space root addChild: track.
	space show.