as yet unclassified
drawOn: aCanvas
	self isPressed
		ifTrue: [ self drawPressedButtonOn: aCanvas]
		ifFalse: [ self drawPlainButtonOn: aCanvas ].
	