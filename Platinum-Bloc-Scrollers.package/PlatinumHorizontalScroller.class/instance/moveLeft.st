navigation
moveLeft
	| adjusted |
	adjusted := scrollbar bounds inParent bounds.
	scrollbar relocate: ((adjusted origin x - 10)@0).