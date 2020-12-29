as yet unclassified
drawOn: aCanvas
	| aRect |
	aRect := self bounds.
	0 to: 11 do: [ :idx |
		idx even
			ifTrue: [ 
				aCanvas
					line: (aRect origin x)@(aRect origin y + idx)
					to: (aRect corner x - 2)@(aRect origin y + idx)
					width: 1
					color: Color white ]
			ifFalse: [ 
				aCanvas
					line: (aRect origin x + 1)@(aRect origin y + idx)
					to: (aRect corner x - 1)@(aRect origin y + idx)
					width: 1
					color: (Color r: 119 g: 119 b: 119 range: 255) ] ]
	