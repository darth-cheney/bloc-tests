as yet unclassified
drawGradientSquareOn: aCanvas
	| startColor stopColor paint |
	startColor := (Color r: 153 g: 153 b: 153 range: 255).
	stopColor := Color white.
	paint := BlLinearGradientPaint new.
	paint
		from: startColor to: stopColor;
		start: (3@3);
		end: (10@10).
		
	aCanvas fill
		paint: paint;
		path: ((3@3) corner: (10@10));
		draw.