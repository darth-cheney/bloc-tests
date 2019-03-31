event handling
performClick
	self labelMorph color: Color black.
	self fillStyle: self class newFillStyle.
	pressed := false.
	actionBlock ifNotNil: [ actionBlock value ].