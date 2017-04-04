as yet unclassified
drawMouseDownGradient
	| startColor stopColor |
	startColor := Color white darker.
	stopColor := (Color gray lighter).
	^BlLinearGradientPaint new
		stops: { 0.0 -> startColor. 1.0 -> stopColor. };
		start: 9@9;
		end: 0@0;
		yourself.