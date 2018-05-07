as yet unclassified
drawInnerShadowsOn: aCanvas inRect: rect
	"Draw the innre dark shadows on the bottom right of the button"
	| lightPath lightColor darkPath darkColor |
	darkColor := Color r: 119 g: 119 b: 119 range: 255.
	lightColor := Color r: 170 g: 170 b: 170 range: 255.
	darkPath := aCanvas path
		moveTo: (rect right - 1)@(rect top + 2);
		lineTo: (rect right - 1)@(rect bottom - 2);
		lineTo: (rect right - 2)@(rect bottom - 2);
		lineTo: (rect right - 2)@(rect bottom - 1);
		lineTo: (rect left + 2)@(rect bottom - 1);
		build.
	lightPath := aCanvas path
		moveTo: (rect right - 2)@(rect top + 1);
		lineTo: (rect right - 2)@(rect bottom - 3);
		lineTo: (rect right - 3)@(rect bottom - 3);
		lineTo: (rect right - 3)@(rect bottom -2);
		lineTo: (rect left + 1)@(rect bottom - 2);
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