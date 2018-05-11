constants
downArrow
	self form: (Form new readFrom: (ReadStream on: self class downArrowBytes)).
	direction := #down.