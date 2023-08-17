as yet unclassified
generateWindowsPackage

	EmbeddedSupportWindowsGenerator new
		properties: {
			#AppName -> 'Takuzu'.
			#InfoString -> 'A Takuzu game written in Pharo'.
			#BundleIdentifier -> 'org.pharo.takuzu'.
			#ShortVersion -> '1.0.0'.
			#DisplayName -> 'Takuzu'.
			#CommandLineHandler -> 'takuzu'.
			#IconFile -> self iconFile.
			#CompanyName -> 'Pharo Consortium'.
			#LegalCopyright -> 'Copyright \251 https://www.pharo.org 2023\0'
		} asDictionary;
		outputDirectory: FileLocator workingDirectory / 'build';
		generate