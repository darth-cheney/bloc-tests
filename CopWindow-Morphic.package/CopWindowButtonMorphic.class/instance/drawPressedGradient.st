as yet unclassified
drawPressedGradient
	"Draws the gradient fill for the
	 button when the mouse is down
	 within it (isPressedDown)"
	| tmp2 |
	tmp2 := GradientFillStyle new.
	tmp2
		origin: (inner position);
		colorRamp:
			{(1.0 -> Color white).
			(0.0 -> Color gray lighter lighter)}.
	^ tmp2 direction: 11 @ 11