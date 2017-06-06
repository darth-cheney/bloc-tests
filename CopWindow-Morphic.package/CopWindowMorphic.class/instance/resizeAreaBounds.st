as yet unclassified
resizeAreaBounds
	"Returns a bounding rect equivalent to a box
	 4x4 from the bottom right corner of self"
	| newX newY |
	newX := self bounds corner x - 10.
	newY := self bounds corner y - 10.
	^ (newX@newY) corner: (self bounds corner).