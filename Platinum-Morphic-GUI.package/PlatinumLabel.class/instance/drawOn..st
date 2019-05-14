drawing
drawOn: aCanvas
	| diff |
	diff := (font ascent - font pointSize).
	aCanvas
		fillRectangle: self bounds
		color: backgroundColor.
	aCanvas
		drawString: string
		at: (self bounds origin - (0@diff))
		font: font
		color: textColor.
		