#!/bin/bash

set -x
set -e

wget -O -  get.pharo.org/64/110+vm | bash
./pharo Pharo.image save Takuzu

if [ ! -z "$GITHUB_WORKSPACE" ] 
then
	./pharo Takuzu.image eval --save "Metacello new 
	    baseline:'Takuzu'; 
	    repository: 'gitlocal://$GITHUB_WORKSPACE/src';
		onUpgradeUseLoaded;
		onConflictUseLoaded;
	    load: 'core'"
else
	./pharo Takuzu.image eval --save "Metacello new
	    baseline:'Takuzu';
	    repository: 'github://tesonep/Takuzu:main/src';
		onUpgradeUseLoaded;
		onConflictUseLoaded;
	    load: 'core'"
fi

./pharo Takuzu.image eval "Takuzu generateWindowsPackage"

ls -lah

cd build

ls -lah
cat CMakeLists.txt

cmake -B . -S . && cmake --build .
powershell -File buildWindowsPackage.ps1