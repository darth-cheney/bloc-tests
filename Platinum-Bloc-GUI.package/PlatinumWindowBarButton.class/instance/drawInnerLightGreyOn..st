as yet unclassified
drawInnerLightGreyOn: aCanvas
	| col |
	col := Color r: 204 g: 204 b: 204 range: 255.
	aCanvas fill
		paint: col;
		path: ((2@2) corner: 11@11);
		draw.