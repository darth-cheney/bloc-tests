as yet unclassified
drawMouseDownGradient
	| startColor stopColor |
	startColor := Color white darker.
	stopColor := (Color r: 110 g: 110 b: 110 range: 255).
	^BlLinearGradientPaint new
		stops: { 0.0 -> startColor. 1.0 -> stopColor. };
		start: 9@9;
		end: 0@0;
		yourself.