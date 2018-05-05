accessing
label: aString
	"Set the label. We will need to adjust the button width and height"
	| m font |
	font := TextStyle defaultFont.
	self labelMorph ifNotNil: [
		self labelMorph delete ].
	m := StringMorph contents: aString font: (font forceBold pointSize: 12).
	m color: Color black.
	self extent: (m extent x + 34)@(m extent y + 9).
	m position: self center - (m extent // 2) - (0@1).
	self addMorph: m.
	labelMorph := m.
	m lock.
	
	