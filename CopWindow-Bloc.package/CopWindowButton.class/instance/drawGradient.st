as yet unclassified
drawGradient
	
	|startColor stopColor|
	startColor := Color white.
	stopColor := (Color r: 130 g: 130 b: 130 range: 255).
	"stopColor := (Color gray lighter lighter)."
	^BlLinearGradientPaint new
		stops: { 0.0 -> startColor. 1.0 -> stopColor. };
		start: 9@9;
		end: 0@0;
		yourself.