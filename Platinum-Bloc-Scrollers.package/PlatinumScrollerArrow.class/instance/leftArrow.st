private
leftArrow
	self form: (Form new readFrom: (ReadStream on: self class leftArrowBytes)).
	direction := #left