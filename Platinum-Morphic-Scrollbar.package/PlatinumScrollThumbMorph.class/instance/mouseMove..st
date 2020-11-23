event handling
mouseMove: evt
	dragAction ifNotNil: [ 
		dragAction value: self position + (evt position - evt startPoint) ]