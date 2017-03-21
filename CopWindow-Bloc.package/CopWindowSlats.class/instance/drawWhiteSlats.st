as yet unclassified
drawWhiteSlats
	| count |
	count := 0.
	6
		timesRepeat: [ | slat |
			slat := BlElement new.
			Transcript show: (self width); cr.
			slat size:(self extent x - 2)@1;
				  position: 0@(count);
				  background: (Color white darker);
				  constraintsDo: [ :c | c horizontal exact: (self extent x - 2) ].
			self addChild: slat.
			count := (count + 2)].