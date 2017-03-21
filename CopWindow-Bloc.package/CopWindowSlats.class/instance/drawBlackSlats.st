as yet unclassified
drawBlackSlats
	| count slatColor |
	count := 1.
	"slatColor := (Color fromRgbTriplet: #(20 20 20))."
	slatColor := (Color gray lighter lighter).
	6 timesRepeat: [ | slat |
		slat := BlElement new.
		slat size: (self extent x - 2)@1;
			  position: 2@(count);
			  background: slatColor;
			  constraintsDo: [ :c | c horizontal exact: ((self extent x) - 2) ].
		self addChild: slat.
		count := (count + 2) ].