initialization
initialize
	super initialize.
	self form: (Form new readFrom: (ReadStream on: self class formBytes)).