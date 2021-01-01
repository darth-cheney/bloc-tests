as yet unclassified
drawGripInRect: aRect on: aCanvas
	"Draw the grip form into the middle
	of the rect using the canvas."
	| startX startY |
	startX := ((aRect origin x) + (aRect width / 2) - (gripForm width / 2)).
	startY := ((aRect origin y) + (aRect height / 2) - (gripForm height / 2)).
	aCanvas
		drawImage: gripForm
		at: startX@startY.