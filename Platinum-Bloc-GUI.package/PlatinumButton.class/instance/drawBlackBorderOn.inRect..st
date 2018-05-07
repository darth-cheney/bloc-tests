as yet unclassified
drawBlackBorderOn: aCanvas inRect: borderBounds
	| vertices path fillColor |
	fillColor := self fillColor.
	pressed ifTrue: [ fillColor := self fillColorPressed ].
	vertices := { 
	(borderBounds left + 2)@(borderBounds top).
	(borderBounds right - 2)@(borderBounds top).
	(borderBounds right)@(borderBounds top + 2).
	(borderBounds right)@(borderBounds bottom - 2).
	(borderBounds right -2)@(borderBounds bottom).
	(borderBounds left + 2)@(borderBounds bottom).
	(borderBounds left)@(borderBounds bottom - 2).
	(borderBounds left)@(borderBounds top + 2) }.
	
	path := aCanvas shape polygon: vertices.
	aCanvas fill
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: (fillColor);
		path: path;
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: path;
		draw.
	
		
		
	