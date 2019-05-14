as yet unclassified
stockMusicLibrary32
	^ PNGReadWriter formFromStream: (ReadStream on: ( self stockMusicLibrary32Source base64Decoded))