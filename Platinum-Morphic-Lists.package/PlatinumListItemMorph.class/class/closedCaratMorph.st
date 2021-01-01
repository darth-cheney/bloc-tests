as yet unclassified
closedCaratMorph
	^ (PNGReadWriter formFromStream: self closedCaratSource base64Decoded asByteArray readStream) asMorph