as yet unclassified
borderVerticies
	"Return a collection of points corresponding to the
	button border boundaries. Will be drawn and filled."
	^ { 
		"top left"
		(self bounds left + 2)@(self bounds top).
		(self bounds right - 3)@(self bounds top).
		(self bounds right - 3)@(self bounds top).
		
		(self bounds right - 1)@(self bounds top + 2).
		(self bounds right - 1)@(self bounds top + 2).
		
		(self bounds right - 1)@(self bounds bottom - 3).
		(self bounds right - 1)@(self bounds bottom - 3).
		
		(self bounds right - 3)@(self bounds bottom - 1). 
		(self bounds right - 3)@(self bounds bottom - 1).
		
		(self bounds left + 2)@(self bounds bottom - 1).
		(self bounds left + 2)@(self bounds bottom - 1).
		
		(self bounds left)@(self bounds bottom - 3).
		(self bounds left)@(self bounds bottom - 3).
		
		(self bounds left)@(self bounds top + 2).
		(self bounds left)@(self bounds top + 2).
		
		(self bounds left + 2)@(self bounds top)}.
		