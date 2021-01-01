as yet unclassified
openCaratMorph
	^ (PNGReadWriter formFromStream: self openCaratSource base64Decoded asByteArray readStream) asMorph 