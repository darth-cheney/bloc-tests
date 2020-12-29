event handling
performClick
	self labelMorph color: Color black.
	pressed := false.
	actionBlock ifNotNil: [ actionBlock value ].