#!/bin/bash

set -eou pipefail
set -x

if [ -z "${1+x}" ]; then
    echo "Must supply non-empty build dir."
    exit 1;
fi

# Ensure dir ends in trailing slash for rsync.
builddir="${1%/}/"

webdir=~/web/www.gigamonkeys.com/ai/
mkdir -p "$webdir"

sha=$(git log --pretty=tformat:%H -1);

rsync --exclude .git --recursive --delete "$builddir" "$webdir"
pushd "$webdir"
git add -A .
git commit -m "Publish $sha" .
git push
popd
