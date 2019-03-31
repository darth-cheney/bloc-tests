event handling
mouseUp: evt
	self submorphs first image: form.
	(self containsPoint: evt position)
		ifTrue: [ self handleClick ]