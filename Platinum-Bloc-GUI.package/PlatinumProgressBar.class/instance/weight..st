accessing
weight: aNumber
	"Weight cannot be less than zero or more than 100"
	aNumber > 100
		ifTrue: [ ^ self ].
	aNumber < 0
		ifTrue: [ ^ self ].
	weight := aNumber.
	self recalculateWidth.
	