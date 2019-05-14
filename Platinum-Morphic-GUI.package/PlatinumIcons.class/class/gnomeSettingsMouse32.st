as yet unclassified
gnomeSettingsMouse32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self gnomeSettingsMouse32Source base64Decoded))