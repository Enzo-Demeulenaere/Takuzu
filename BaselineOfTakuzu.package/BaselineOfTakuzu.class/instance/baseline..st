baselines
baseline: spec

	<baseline>
	spec for: #common do: [
		self
			defineDependencies: spec;
			definePackages: spec;
			defineGroups: spec ]