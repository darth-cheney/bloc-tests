accessing
direction: aSymbol
	aSymbol = #up ifTrue: [ 
		^ self upArrow ].
	aSymbol = #down ifTrue: [ 
		^ self downArrow ].
	aSymbol = #right ifTrue: [ 
		^ self rightArrow ].
	aSymbol = #left ifTrue: [ 
		^ self leftArrow ].