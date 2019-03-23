initialization
initialize
	super initialize.
	form := self class newForm.
	pressedForm := self class newPressedForm.
	pressed := false.
	self background: form.
	self setupEventHandlers.
	self size: (13@13).