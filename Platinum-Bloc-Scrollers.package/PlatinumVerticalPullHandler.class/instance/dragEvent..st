dnd handlers
dragEvent: anEvent
	| dragPosition dragDelta newPosition parentHeight |

	dragPosition := anEvent currentTarget globalPointToParent: anEvent position.
	dragDelta := dragPosition - dragStartPosition.
	newPosition := (originalPosition + dragDelta).
	parentHeight := anEvent currentTarget parent extent y.
	(newPosition y < 0) ifTrue: [ 
		newPosition := 0@0 ].
	((newPosition y) + (anEvent currentTarget height)) > parentHeight
		ifTrue: [ 
			newPosition := 0@(parentHeight - anEvent currentTarget height)].
	anEvent currentTarget relocate: 0@(newPosition y).

	anEvent consumed: true