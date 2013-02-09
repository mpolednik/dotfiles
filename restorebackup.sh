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

sudo rsync -av $source/local /usr/local
rsync -av $source/Library ~/Library
rsync -av $source/Documents ~/Documents
rsync -av $source/Dropbox ~/Dropbox
rsync -av $source/Music ~/Music
rsync -av $source/Pictures ~/Pictures
rsync -av $source/ssh ~/.ssh
rsync -av $source/Workflow ~/Workflow
