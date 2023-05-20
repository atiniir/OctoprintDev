#!/usr/bin/env bash

echo "Hello from our install.sh!"

for d in *; do
 if [ -d "$d" ]; then
    echo $d
    cd $d
    python setup.py develop
    octoprint dev plugin:install
    cd ..
 fi
done

echo "Invoking restart.sh"
./restart.sh