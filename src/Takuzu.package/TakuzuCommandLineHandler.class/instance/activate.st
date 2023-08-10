activation
activate

	OSWindowDriver current startUp: true.
	EmbeddedSupport errorHandler: ESSDLMessageErrorHandler new.

	OSPlatform current isMacOSX
		ifTrue: [ | main |
			main := CocoaMenu new.
			main	title: 'MainMenu'; "Only informative"
				addSubmenu: 'Application' with: [ :m |
					m
						addItemWithTitle: 'Quit'
						action: [ Smalltalk snapshot: false andQuit: true ]
						shortcut: 'q' ].

			main addSubmenu: 'Levels' with: [ :m |
				4 to: 12 by: 2 do: [ :size | 
					m addSubmenu: size printString , 'x' , size printString with: [ :m2 |
						1 to: 5 do: [ :level |
							m2 addItemWithTitle: 'Level ' , level printString 
								action: [ 
									TFieldElement openWithModel: (TField perform: ('level',size printString,'Grid', level printString) asSymbol)] 	
						].
					] 
				]
			].
 			
			main addSubmenu: 'Random' with: [ :m |
					m addItemWithTitle: '4x4' action: [ TFieldElement launch4 ].
					m addItemWithTitle: '6x6' action: [ TFieldElement launch6 ] ];
				addSubmenu: 'Help' with: [ :m |
					m
						addItemWithTitle: 'Show Help'
						action: [ Takuzu showHelp ]
						shortcut: '' ].
			main setAsMainMenu.
			
			TFieldElement launch4 ]
		ifFalse: [
			| space |
			space := Takuzu openWithMenuBar.
			space
				when: BlSpaceClosedEvent
				do: [ :e | Smalltalk snapshot: false andQuit: true ] ]