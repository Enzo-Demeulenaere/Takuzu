as yet unclassified
generateOSXPackage

	AppGeneratorOSXGenerator new
		properties: {
			#AppName -> 'Takuzu'.
			#InfoString -> 'A Takuzu game written in Pharo'.
			#BundleIdentifier -> 'org.pharo.takuzu'.
			#ShortVersion -> '1.0.0'.
			#DisplayName -> 'Takuzu'.
			#CommandLineHandler -> 'takuzu'.
			#IconSetFile -> self iconSetFile.
		} asDictionary;
		outputDirectory: FileLocator workingDirectory / 'build';
		generate