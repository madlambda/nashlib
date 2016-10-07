#!/usr/bin/env

GITSCHEMA = "https://"

fn nashget(path) {
	curdir <= pwd | xargs echo -n

	-mkdir -p $NASHPATH + "/lib"
	cd $NASHPATH + "/lib"

	git clone $GITSCHEMA + $path

	cd $curdir
}

bindfn nashget nashget
