as yet unclassified
drawArrowInRect: aRect on: aCanvas
	"Draw the arrow in the dead center of
	the given rect"
	| startX startY |
	startX := ((aRect origin x) + (aRect width / 2) - (arrowForm width / 2)).
	startY := ((aRect origin y) + (aRect height / 2) - (arrowForm height / 2)).
	aCanvas
		drawImage: arrowForm
		at: startX@startY.