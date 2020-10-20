#!/usr/bin/env

var GITSCHEMA = "https://"

fn nashget(path) {
	var curdir <= pwd | xargs echo -n
	var _, status <= mkdir -p $NASHPATH+"/lib"

	if $status == "0" {
		chdir($NASHPATH+"/lib")
		
		git clone $GITSCHEMA+$path
		
		chdir($curdir)
	} else {
		printf "fail to create path: '%s'" $NASHPATH+"/lib"
	}
}
