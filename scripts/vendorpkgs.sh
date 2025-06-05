#!/bin/sh

mkdir -p internal/vendored

git clone --revision v1.1.1 https://github.com/davecgh/go-spew internal/vendored/go-spew
rm -rf internal/vendored/go-spew/.git
scripts/renmod.sh github.com/davecgh/go-spew matheusd.com/depvendoredtestify/internal/vendored/go-spew

git clone --revision v1.0.0 https://github.com/pmezard/go-difflib internal/vendored/go-difflib
rm -rf internal/vendored/go-difflib/.git
scripts/renmod.sh github.com/pmezard/go-difflib matheusd.com/depvendoredtestify/internal/vendored/go-difflib


# Needed because renmod.sh screws up the main go.mod file.
git restore go.mod

# Needed to fix a test inside go-difflib.
git apply scripts/patch-difflib.diff

go mod tidy
