#!/bin/bash
echo "Checking go version..."
gov=`go version`
read -r -a items <<< $gov
if [ "${items[2]}" == "go1.9.4" -o "${items[2]}" == "go1.10" ]; then
    echo "This go version cannot compile Rosie.  Go 1.11 is known to work."
    exit -1
fi

echo "Creating script that sets GOPATH and ROSIE_HOME"
echo "export GOPATH=`pwd`" >setvars
echo "--------------------------------------------------------"
echo "Run 'make test' or use the following commands"
echo "Source the file 'setvars' to set GOPATH..."
echo "    source setvars"
echo "Build the test program..."
echo "    go build rtest"
echo "Run the test program..."
echo "    ./rtest"






