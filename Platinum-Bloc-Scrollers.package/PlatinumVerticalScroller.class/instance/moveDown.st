navigation
moveDown
	| adjusted |
	adjusted := scrollbar bounds inParent bounds.
	scrollbar relocate: (0@(adjusted origin y + 10)).