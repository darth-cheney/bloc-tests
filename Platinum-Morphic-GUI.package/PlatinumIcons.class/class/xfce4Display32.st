as yet unclassified
xfce4Display32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self xfce4Display32Source base64Decoded))