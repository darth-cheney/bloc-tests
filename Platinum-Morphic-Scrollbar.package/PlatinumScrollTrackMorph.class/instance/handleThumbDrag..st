as yet unclassified
handleThumbDrag: position
	"Given a speculative new position for the thumb, ensure that
	we do not move it outside of the bounds of the track."
	| yMin yMax diff |
	yMin := (self bounds origin y).
	yMax := (self position y + self height) - thumb height.

	(position y between: yMin and: yMax)
		ifTrue: [ 
			diff := (position y) - (thumb position y).
			thumb position: (thumb position x)@(position y).
			updateBlock ifNotNil: [ 
				updateBlock cull:  diff ] ]
	