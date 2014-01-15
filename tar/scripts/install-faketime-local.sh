#!/bin/bash -e
echo "Installing faktime-wrapper to local (user) dir"
 
mkdir -p ~/.local/usr/bin/ 
mkdir -p ~/.local/usr/lib/faketime-wrapper/

cp -r faketime-wrapper/ ~/.local/usr/lib/

ls -l ~/.local/usr/lib/faketime-wrapper/

echo "Done"

