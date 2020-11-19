event handling
mouseMove: evt
	moveAction ifNotNil: [ 
		moveAction value: (evt position - evt startPoint) ]