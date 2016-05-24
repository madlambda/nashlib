#!/usr/bin/env

GITSCHEMA = "https://"

fn nashget(path) {
    if $NASHPATH == "" {
            return "", "$NASHPATH not set"
    }

    -mkdir -p $NASHPATH + "/src"
    cd $NASHPATH + "/src"

    git clone $GITSCHEMA + $path

    cd $OLDPWD
    return
}

bindfn nashget nashget
