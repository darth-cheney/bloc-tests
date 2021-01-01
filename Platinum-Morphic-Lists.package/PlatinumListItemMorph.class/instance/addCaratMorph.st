as yet unclassified
addCaratMorph
	caratMorph ifNil: [
		caratMorph:= self class closedCaratMorph.
		caratMorph width: 12.
		self addMorph: caratMorph ].