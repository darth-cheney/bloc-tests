as yet unclassified
drawPressedInnerShadowsOn: aCanvas inRect: rect
	| darkColor lightColor darkPath lightPath |
	lightColor := Color r: 136 g: 136 b: 136 range: 255.
	darkColor := Color r: 119 g: 119 b: 119 range: 255.
	lightPath := aCanvas path
		moveTo: (rect right - 1)@(rect top + 3);
		lineTo: (rect right - 1)@(rect bottom - 2);
		lineTo: (rect right - 2)@(rect bottom - 2);
		lineTo: (rect right - 2)@(rect bottom - 1);
		lineTo: (rect left + 2)@(rect bottom - 1);
		build.
	darkPath := aCanvas path
		moveTo: (rect right - 2)@(rect top + 3);
		lineTo: (rect right - 2)@(rect bottom - 3);
		lineTo: (rect right - 3)@(rect bottom - 3);
		lineTo: (rect right - 3)@(rect bottom - 2);
		lineTo: (rect left + 3)@(rect bottom - 2);
		build.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: lightColor;
		path: lightPath;
		draw.
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: darkColor;
		path: darkPath;
		draw.