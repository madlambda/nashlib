#!/usr/bin/env

GITSCHEMA = "https://"

fn nashget(path) {
    -mkdir -p $NASHPATH + "/lib"
    cd $NASHPATH + "/lib"

    git clone $GITSCHEMA + $path

    cd $OLDPWD
}

bindfn nashget nashget
