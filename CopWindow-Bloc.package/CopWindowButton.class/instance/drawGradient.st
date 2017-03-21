as yet unclassified
drawGradient
	
	|startColor stopColor|
	startColor := Color white.
	"stopColor := (Color fromRgbTriplet: #(50 50 50))."
	stopColor := (Color gray lighter lighter).
	^BlLinearGradientPaint new
		stops: { 0.0 -> startColor. 1.0 -> stopColor. };
		start: 9@9;
		end: 0@0;
		yourself.