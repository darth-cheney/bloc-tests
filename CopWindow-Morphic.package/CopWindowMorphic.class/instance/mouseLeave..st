event handling
mouseLeave: evt
	isStretching ifFalse: [ ActiveHand showTemporaryCursor: nil ].