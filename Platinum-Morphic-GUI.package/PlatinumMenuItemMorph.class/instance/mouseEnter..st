event handling
mouseEnter: evt
	self color: (Color blue alpha: 0.6).
	label color: Color white.
	Transcript show: 'Mouse Enter!'; cr.