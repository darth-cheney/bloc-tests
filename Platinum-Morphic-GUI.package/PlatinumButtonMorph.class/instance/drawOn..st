as yet unclassified
drawOn: aCanvas

	"First, if there is a platinum fill style, we draw that"
	self fillStyle ifNotNil: [
		self fillStyle 
			fillRectangle: (self bounds insetBy: self borderWidth) 
			on: aCanvas ].
		
	super drawOn: aCanvas