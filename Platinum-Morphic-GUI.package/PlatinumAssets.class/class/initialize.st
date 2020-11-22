as yet unclassified
initialize
	"We need to load the included Charcoal font, and we need to
	do this differently depending on whether we are using Pharo
	or Squeak. We assume Pharo as the default case.
	
	Pharo does not have an easy way to 'load a font' without specifying
	a pointsize at load time, especially from a stream of some sort.
	So we handle font creation separately in the accessor method
	#charcoalFontSized: and pharoCharcoalFontSized:"
	(Smalltalk version asLowercase includesSubstring: 'squeak')
		ifTrue: [
			self loadFontsForSqueak ]