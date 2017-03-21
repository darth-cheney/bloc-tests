initialization
initialize
	| horizWidthLeft titleWidth slatWidth|
	super initialize.
	titleWidth := 50.
	horizWidthLeft := 250.
	"Set up our own attributes"
	self 
		size: (250@18);
		background: (Color fromRgbTriplet: #(204 204 204)).
	
	closeButton := CopWindowButton new.
	closeButton position: (2@2).
	
	collapseButton := CopWindowCollapseButton new.
	collapseButton position: (250 - 15)@2.
	
	scaleButton := CopWindowScaleButton new.
	scaleButton position: (250 - 30 - 3)@2.
	
	leftSlats := CopWindowSlats width: 60 position: (19@3).
	rightSlats := CopWindowSlats width: 60 position: ((250 - 60 - 2 - 13 - 3 - 13 - 4)@3).
		
	self addChildren: { closeButton. leftSlats. rightSlats. collapseButton. scaleButton }.
	
	
		
	