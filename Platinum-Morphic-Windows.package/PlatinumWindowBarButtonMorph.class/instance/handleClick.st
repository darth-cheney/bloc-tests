as yet unclassified
handleClick
	self action ifNotNil: [ 
		self perform: (self action) ].
	self actionBlock ifNotNil: [ 
		self actionBlock value ]