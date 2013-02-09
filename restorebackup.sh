#!/bin/bash
# Author: Martin Polednik

function usage {
    echo $0 'source_media'
    exit
}

source="$1"

if [ $# -ne 1 ]; then
    usage
fi

sudo rsync -rtuv $source/local /usr/local
rsync -rtuv $source/Library ~/Library
rsync -rtuv $source/Documents ~/Documents
rsync -rtuv $source/Dropbox ~/Dropbox
rsync -rtuv $source/Music ~/Music
rsync -rtuv $source/Pictures ~/Pictures
rsync -rtuv $source/ssh ~/.ssh
rsync -rtuv $source/Workflow ~/Workflow
