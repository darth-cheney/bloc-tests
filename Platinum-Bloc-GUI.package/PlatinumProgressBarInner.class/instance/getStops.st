as yet unclassified
getStops
	| adjustment1 adjustment2 |
	adjustment1 := (Color r: 20 g: 20 b: 20 range: 100).
	adjustment2 := (Color r: 20 g: 20 b: 0 range: 100).
	^ { 
		0.05 -> (barColor - adjustment1).
		0.15 -> barColor.
		0.25 -> (barColor + adjustment1).
		0.35 -> (barColor + adjustment1 + adjustment2).
		0.45 -> (Color white).
		0.55 -> (barColor + adjustment1 + adjustment2).
		0.65 -> (barColor + adjustment1).
		0.75 -> barColor.
		0.85 -> (barColor - adjustment1).
		"1.0 -> (barColor - adjustment1 - adjustment1)"
		0.95 -> (Color r: 0 g: 0 b: ((barColor blue * 100) /2) range: 100)}.