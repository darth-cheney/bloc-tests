as yet unclassified
drawSlats
	"Draws alternating light and dark slats,
	 starting with light, with alternating
	 margins on either side."

	| darkColor lightColor |
	darkColor := (Color gray lighter lighter).
	lightColor := Color white darker.
	
	6 timesRepeat: [ 
		self addChild: (BlElement new 
			"margin: (BlInsets right: 2);"
			constraintsDo: [ :c |
				c vertical exact: 1.
				c horizontal matchParent ];
			background: lightColor).
		self addChild: (BlElement new
			"margin: (BlInsets left: 2);"
			constraintsDo: [ :c | 
				c vertical exact: 1.
				c horizontal matchParent ];
			background: darkColor).
	].