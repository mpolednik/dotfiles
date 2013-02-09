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

sudo rsync -av $source/local /usr/
sudo rsync -av $source/Library ~/
sudo rsync -av $source/Documents ~/
sudo rsync -av $source/Dropbox ~/
sudo rsync -av $source/Music/iTunes ~/Music/
sudo rsync -av $source/Pictures ~/
sudo rsync -av $source/ssh/ ~/.ssh/
sudo rsync -av $source/Workflow ~/
