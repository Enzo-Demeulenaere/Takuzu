baselines
baseline: spec

	<baseline>
	spec for: #common do: [
		self
			definePackages: spec;
			defineDependencies: spec;
			defineGroups: spec ]