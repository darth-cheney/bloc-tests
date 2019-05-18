accessing
label: aString
	label contents: aString.
	self owner ifNotNil: [ 
		self owner layoutChanged ].