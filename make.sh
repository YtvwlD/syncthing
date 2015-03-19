#!/bin/sh
echo "Setting GOPATH, GOROOT and GOBIN..."
export GOPATH=$(pwd)/gopath
mkdir -p $GOPATH/root
export GOROOT=$GOPATH/root
mkdir -p $GOPATH/bin
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
#echo "Installing godep..."
#go install github.com/tools/godep
#echo "Installing go vet..."
#go install code.google.com/p/go.tools/cmd/vet
echo "Creating a symbolic link..."
mkdir -p $GOPATH/src/github.com/syncthing
rm -f $GOPATH/src/github.com/syncthing/syncthing
ln -s $(pwd) $GOPATH/src/github.com/syncthing/syncthing

echo "Building it..."
rm syncthing
go run build.go -no-upgrade clean build
