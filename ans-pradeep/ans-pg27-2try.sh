#!/bin/bash

set -e 

echo "Enter a Filename"
read Filename
#echo "You have entered a \"$Filename\" as variable Filename"

ansible node01 -m file -a "path=~/$Filename state=file"

if [$? -eq 0 ];
then    
    echo "$Filename exist"
    echo "Coping file to node"
    ansible node01 -m copy -a "src=~/$Filename dest=~/$Filename.bak"
else
    echo "$Filename does not exist"
fi