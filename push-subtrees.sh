#! /bin/bash
#

libs=$(ls kiss-libraries)

for lib in $libs; do
	if [ $lib = "_deprecated" ]; then continue; fi

	git subtree push --prefix=kiss-libraries/$lib git@github.com:kiss-lang/$lib.git main
done
