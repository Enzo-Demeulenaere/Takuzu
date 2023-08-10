#!/bin/bash

set -x
set -e

wget -O -  get.pharo.org/64/110+vm | bash
./pharo Pharo.image save Takuzu

if [ ! -z "$GITHUB_WORKSPACE" ] 
then
	./pharo Takuzu.image eval --save Metacello new \
	    baseline:\'Takuzu\'; \
	    repository: \'gitlocal://$GITHUB_WORKSPACE/src\';\
	    load: \'core\'
else
	./pharo Takuzu.image eval --save "Metacello new
	    baseline:'Takuzu';
	    repository: 'github://tesonep/Takuzu:main/src';
	    load: 'core'"	
fi

./pharo Takuzu.image eval "Takuzu generateOSXPackage"

cd build
chmod +x build.sh
./build.sh