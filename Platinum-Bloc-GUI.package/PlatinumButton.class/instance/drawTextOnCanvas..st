as yet unclassified
drawTextOnCanvas: aCanvas
	| font textPainter metrics baseline origin fontColor |
	fontColor := Color black.
	pressed ifTrue: [ fontColor := Color white ].
	aCanvas fontFace
		familyName: 'Chicago';
		source: (self class labelFontBytes);
		build.
	font := aCanvas font
		named: 'Chicago';
		size: 13;
		build.
	textPainter := aCanvas text
		font: font;
		paint: fontColor;
		string: self labelString.
		
	metrics := textPainter measure.
	
	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
	baseline := origin - metrics textMetrics bounds origin.
	
	textPainter
		baseline: baseline;
		draw
		