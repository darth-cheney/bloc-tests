accessing
model: aPlatinumMenuModel
	model := aPlatinumMenuModel.
	self
		name: model name;
		labelText: model labelText; 
		removeAllMorphs.
	model groups do: [ :group |
		| area |
		area := PlatinumMenuAreaMorph new.
		group do: [ :itemModel |
			area addMorph: (PlatinumMenuItemMorph fromModel: itemModel) ].
		self addMorph: area ].
	
	