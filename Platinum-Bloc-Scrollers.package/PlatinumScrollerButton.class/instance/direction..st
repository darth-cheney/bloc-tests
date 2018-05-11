accessing
direction: aSymbol
	({ #up. #down. #left. #right } includes: aSymbol)
		ifTrue: [ 
			direction := aSymbol ]
		ifFalse: [
			direction := #up ].
	