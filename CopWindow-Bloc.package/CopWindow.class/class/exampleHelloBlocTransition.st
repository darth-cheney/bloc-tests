as yet unclassified
exampleHelloBlocTransition
	| win text1 text2 inner anim |
	win := self exampleEmpty.
	win contentArea layout: BlFrameLayout new.
	inner := BlElement new.
	inner
		layout: BlLinearLayout vertical;
		constraintsDo: [ :c | 
			c frame horizontal alignCenter.
			c frame vertical alignCenter.
			c horizontal fitContent.
			c vertical fitContent ].
	text1 := (BrRopedText string: 'BLOC')
		attributes:
			{(BrFontFamilyAttribute named: 'Futura').
			(BrFontSizeAttribute size: 36)}.
	text2 := (BrRopedText string: 'Hello')
		attributes:
			{(BrFontFamilyAttribute named: 'Helvetica Neue').
			(BrFontSizeAttribute size: 48).
			BrFontWeightAttribute thin}.
	inner
		addChild:
			(BlTextElement new
				text: text2;
				margin: (BlInsets all: 10)).
	inner
		addChild:
			(BlTextElement new
				text: text1;
				margin: (BlInsets all: 10)).
	win contentArea addChild: inner