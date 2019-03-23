initialization
initialize
	super initialize.
	labelString := 'Press Me'.
	pressed := false.
	self addEventHandlerOn: BlMouseDownEvent do: [ 
		self pressed: true ].
	self
		addEventHandlerOn: BlMouseUpEvent
		do: [ :anEvent |
			self pressed: false ].
	self
		addEventHandlerOn: BlMouseLeaveEvent
		do: [ :anEvent | 
			pressed ifTrue: [ 
				self pressed: false ] ].