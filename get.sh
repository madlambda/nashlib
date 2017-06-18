#!/usr/bin/env

var GITSCHEMA = "https://"

fn nashget(path) {
	var curdir <= pwd | xargs echo -n

	_ <= mkdir -p $NASHPATH+"/lib"

	chdir($NASHPATH+"/lib")

	git clone $GITSCHEMA+$path

	chdir($curdir)
}
