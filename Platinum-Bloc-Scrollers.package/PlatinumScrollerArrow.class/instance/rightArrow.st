constants
rightArrow
	self form: (Form new readFrom: (ReadStream on: self class rightArrowBytes)).
	direction := #right