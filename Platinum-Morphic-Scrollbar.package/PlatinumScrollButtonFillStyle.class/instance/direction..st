accessing
direction: aSymbol
	"Change the direction of the button.
	Can be #up #down #left #right"
	direction := aSymbol.
	arrowForm := self formForDirection: aSymbol.