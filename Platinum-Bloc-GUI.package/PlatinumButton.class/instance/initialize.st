initialization
initialize
	super initialize.
	labelString := 'Press Me'.
	pressed := false.
	self addEventHandlerOn: BlMouseDownEvent do: [ 
		self pressed: true ].
	self addEventHandlerOn: BlMouseUpEvent do: [ 
		self pressed: false ].