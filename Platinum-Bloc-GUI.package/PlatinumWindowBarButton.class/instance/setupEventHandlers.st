as yet unclassified
setupEventHandlers
	"Set up click and other mouse event handlers"
	self
		addEventHandlerOn: BlMouseDownEvent
		do: [ self pressed: true ].
	self
		addEventHandlerOn: BlMouseUpEvent
		do: [ 
			self pressed ifTrue: [ 
				self pressed: false.
				actionBlock ifNotNil: [ actionBlock value ].
			] ].
	self
		addEventHandlerOn: BlMouseLeaveEvent
		do: [ 
			self pressed ifTrue: [ 
				self pressed: false ] ].