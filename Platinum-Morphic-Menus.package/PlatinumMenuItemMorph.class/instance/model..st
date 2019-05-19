accessing
model: aPlatinumMenuItemModel
	model := aPlatinumMenuItemModel.
	self
		label: model labelText;
		name: model name;
		actionBlock: model actionBlock.
	model hasSubmenu ifTrue: [ 
		submenu := (PlatinumMenuMorph fromModel: model submenu).
		self showSubmenuCarat ].