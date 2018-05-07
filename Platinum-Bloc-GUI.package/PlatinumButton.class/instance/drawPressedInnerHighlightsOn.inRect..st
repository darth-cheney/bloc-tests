as yet unclassified
drawPressedInnerHighlightsOn: aCanvas inRect: rect
	"Draw the darker top/right highlights when the
	button is being pressed."
	| darkPath lightPath darkColor lightColor |
	darkColor := Color r: 68 g: 68 b: 68 range: 255.
	lightColor := Color r: 85 g: 85 b: 85 range: 255.
	darkPath := aCanvas path
		moveTo: (rect left + 1)@(rect bottom - 2);
		lineTo: (rect left + 1)@(rect top + 2);
		lineTo: (rect left + 2)@(rect top + 2);
		lineTo: (rect left + 2)@(rect top + 1);
		lineTo: (rect right - 2)@(rect top + 1);
		build.
	lightPath := aCanvas path
		moveTo: (rect left + 2)@(rect bottom - 1);
		lineTo: (rect left + 2)@(rect top + 3);
		lineTo: (rect left + 3)@(rect top + 3);
		lineTo: (rect left + 3)@(rect top + 2);
		lineTo: (rect right - 1)@(rect top + 2);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: darkColor;
		path: darkPath;
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: lightColor;
		path: lightPath;
		draw.
	