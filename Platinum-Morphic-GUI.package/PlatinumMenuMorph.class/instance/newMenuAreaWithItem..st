instance creation
newMenuAreaWithItem: aMenuItemMorph
	areas add: (PlatinumMenuAreaMorph new).
	areas last addMorphBack: aMenuItemMorph.
	self addMorphBack: areas last.