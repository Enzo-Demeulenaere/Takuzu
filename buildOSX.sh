#!/bin/bash

set -x
set -e

wget -O -  get.pharo.org/64/110+vm | bash
./pharo Pharo.image save Takuzu

./pharo Takuzu.image eval --save "Metacello new
    baseline:'Takuzu';
    repository: 'github://tesonep/Takuzu:main/src';
    load: 'core'"

./pharo Takuzu.image eval "Takuzu generateOSXPackage"

cd build
chmod +x build.sh
./build.sh
