as yet unclassified
drawGradient
	^ (GradientFillStyle new
			colorRamp: { 1.0 -> Color white. 0.0 -> Color gray lighter lighter lighter};
			origin: 1@1;
			direction: 11@11).