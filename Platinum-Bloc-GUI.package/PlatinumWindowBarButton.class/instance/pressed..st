accessing
pressed: aBoolean
	"Mark the button as pressed but also swap backgrounds"
	aBoolean
		ifTrue: [ self background: pressedForm ]
		ifFalse: [ self background: form ].
	pressed := aBoolean.