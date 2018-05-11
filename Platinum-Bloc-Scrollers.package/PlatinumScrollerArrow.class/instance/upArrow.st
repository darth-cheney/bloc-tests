private
upArrow
	self form: (Form new readFrom: (ReadStream on: self class upArrowBytes)).
	direction := #up.