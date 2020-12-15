as yet unclassified
loadFontsForSqueak
	"Load the provided TrueType fonts into this image for Squeak"
	"TTFontReader
		installTTF: 'F:\fonts\amazon__.TTF' 
		asTextStyle: #Amazon
		sizes: #(24 60)"
	| fontStream |
	fontStream := self charcoalBytes base64Decoded asByteArray readStream.
	TTCFont newTextStyleFromTTStream: fontStream