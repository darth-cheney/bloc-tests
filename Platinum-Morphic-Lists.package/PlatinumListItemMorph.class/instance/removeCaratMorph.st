as yet unclassified
removeCaratMorph
	caratMorph ifNotNil: [ 
		caratMorph delete.
		caratMorph := nil ]