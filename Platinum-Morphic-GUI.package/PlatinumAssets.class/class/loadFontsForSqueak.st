as yet unclassified
loadFontsForSqueak
	"Load the provided TrueType fonts into this image for Squeak"
	| fontStream |
	fontStream := self charcoalBytes base64Decoded asByteArray readStream.
	TTFontReader readFrom: fontStream