initialization
initialize
	super initialize.
	self 
		padding: (BlInsets all: 4);
		layout: (BlLinearLayout vertical).
	contentWrapper := PlatinumWindowContentWrapper new.
	contentWrapper 
		constraintsDo: [ :c |
			c vertical matchParent.
			c horizontal matchParent ].
	
	self addChild: contentWrapper.
	
	self addEventHandler:
			(BlEventHandler
				on: BlDblClickEvent
				do: [ :evt | BlElementSelection on: self ]).
	