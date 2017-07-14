#!/usr/bin/env bash

usage() {
    echo `basename $0`: ERROR: $* 1>&2
    echo usage: `basename $0` clean 1>&2
}

[ $# -ne 1 ] && usage "incorrect arguments"

if [ $# -eq 1 ] && expr $1 = 'clean' > /dev/null; then
    if [ -f ./*.tgz ]; then
        echo removing *.tgz
        rm *.tgz
    fi

    if [ -d ./dist ]; then
        echo removing dist folder
        rm -rf dist
    fi
else
    usage "unknown argument"
    exit 1
fi