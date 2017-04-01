examples
exampleBasic
	| space win text |
	"Create the container space"
	space := BlSpace new extent: 500@500.
	
	"New window with default size"
	win := (self new initialize).
	win position: 100@100.
	
	"Text for window content"
	text := ((BrRopedText string: 'Hello.')
	attributes: { 
		BrFontFamilyAttribute named: 'Helvetica Neue'.
		BrFontSizeAttribute size: 48.
		BrFontWeightAttribute thin }). 
		
	win contentArea layout: (BlFrameLayout new).
	win contentArea addChild: (BlTextElement new
		text: text; 
		constraintsDo: [ :c |
			c frame vertical alignCenter.
			c frame horizontal alignCenter ]).
	space root addChild: win.
	space show.