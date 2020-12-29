instance creation
drawFillOn: aCanvas
	| aRect |
	aRect := self bounds insetBy: (self borderWidth + 2).
	