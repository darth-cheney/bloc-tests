accessing
checked: aBoolean
	aBoolean
		ifTrue: [ self addMorph: checkMorph ]
		ifFalse: [ self removeMorph: checkMorph ].
	checked := aBoolean