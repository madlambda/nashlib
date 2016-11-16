#!/usr/bin/env

GITSCHEMA = "https://"

fn nashget(path) {
	curdir <= pwd | xargs echo -n

	-mkdir -p $NASHPATH+"/lib"

	chdir($NASHPATH+"/lib")

	git clone $GITSCHEMA+$path

	chdir($curdir)
}

bindfn nashget nashget
