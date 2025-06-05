#!/usr/bin/env sh

# Credits: https://gist.github.com/iamucil/7578dc7df7d72e1d78c8f5543db3fbcc

export CUR="$1"
export NEW="$2"
go mod edit -module ${NEW}
find . -type f -name '*.go' -exec perl -pi -e 's/$ENV{CUR}/$ENV{NEW}/g' {} \;
