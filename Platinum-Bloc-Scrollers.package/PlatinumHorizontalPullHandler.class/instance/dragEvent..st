dnd handlers
dragEvent: anEvent
	| dragPosition dragDelta newPosition parentWidth |

	dragPosition := anEvent currentTarget globalPointToParent: anEvent position.
	dragDelta := dragPosition - dragStartPosition.
	newPosition := (originalPosition + dragDelta).
	parentWidth := anEvent currentTarget parent extent x.
	(newPosition x < 0) ifTrue: [ 
		newPosition := 0@0 ].
	((newPosition x) + (anEvent currentTarget width)) > parentWidth
		ifTrue: [ 
			newPosition := (parentWidth - anEvent currentTarget width)@0].
	anEvent currentTarget relocate: (newPosition x)@0.

	anEvent consumed: true