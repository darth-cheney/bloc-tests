as yet unclassified
hasContents: aBoolean
	hasContents := aBoolean.
	hasContents
		ifTrue: [
			self addCaratMorph ]
		ifFalse: [
			self removeCaratMorph ]