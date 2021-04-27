#! /bin/bash

haxelib dev asciilib .

# Run the headless unit tests:
echo "Running headless ASCIILib tests"
(cd test && haxe build.hxml)

# Make sure the examples with backends compile, at least:
EXAMPLE_DIRS=examples/**/

for EXAMPLE_DIR in $EXAMPLE_DIRS
do
    echo "Building $EXAMPLE_DIR for html5"
    (cd $EXAMPLE_DIR && lime build html5)
    echo "Building $EXAMPLE_DIR for cpp"
    (cd $EXAMPLE_DIR && lime build cpp)
done