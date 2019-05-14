as yet unclassified
v3floppyUnmount32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self v3floppyUnmount32Source base64Decoded))