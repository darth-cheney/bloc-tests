as yet unclassified
drawGradient
	| tmp2 |
	tmp2 := GradientFillStyle new.
	tmp2
		colorRamp:
			{(1.0 -> Color white).
			(0.0 -> Color gray lighter lighter lighter)};
		origin: 1 @ 1.
	^ tmp2 direction: 11 @ 11