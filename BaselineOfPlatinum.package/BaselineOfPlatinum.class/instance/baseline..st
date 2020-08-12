baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			"Bloc is a dependency, of course"
			self requireBloc: spec.
			
			spec
				"Morphic based packages"
				package: 'Platinum-Morphic-GUI';
				package: 'Platinum-Morphic-Windows';
				package: 'Platinum-Morphic-Menus';
				package: 'Platinum-Morphic-Scrollbar';
				
				"Bloc based packages"
				package: 'Platinum-Bloc-GUI' with: [ spec requires: #('Bloc')];
				package: 'Platinum-Bloc-Scrollers' with: [ spec requires: #('Platinum-Bloc-GUI' 'Bloc') ];
				package: 'Platinum-Bloc-Demos' with: [ spec requires: #('Platinum-Bloc-GUI' 'Bloc') ].
				
			spec
				group: 'default' with: #('Platinum-Bloc-GUI' 'Platinum-Bloc-Scrollers' 'Platinum-Bloc-Demos');
				group: 'morphic' with: #('Platinum-Morphic-GUI' 'Platinum-Morphic-Menus' 'Platinum-Morphic-Scrollbar' 'Platinum-Morphic-Windows').
		].