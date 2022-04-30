as yet unclassified
loadFontsForSqueak
	"Load the provided TrueType fonts into this image for Squeak"
	"TTFontReader
		installTTF: 'F:\fonts\amazon__.TTF' 
		asTextStyle: #Amazon
		sizes: #(24 60)"
	| fontStream fileStream |
	fontStream := self charcoalBytes base64Decoded asByteArray readStream.
	fileStream := FileStream newFileNamed: 'charcoal.ttf'.
	fileStream nextPutAll: fontStream upToEnd.
	TTCFont installFromFileNames: { fileStream name }.