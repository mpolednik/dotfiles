#!/bin/bash
# Author: Martin Polednik


if [ -d '/Volumes/container' ]; then
    sudo rsync -av -delete /usr/local /Volumes/container/
    rsync -av -delete ~/Library /Volumes/container/
    rsync -av -delete ~/Documents /Volumes/container/
    rsync -av -delete ~/Dropbox /Volumes/container/
    rsync -av -delete ~/Music /Volumes/container/
    rsync -av -delete ~/Pictures /Volumes/container/
    rsync -av -delete ~/.ssh/ /Volumes/container/ssh
    rsync -av -delete ~/Workflow /Volumes/container/
fi

if [ -d '/Volumes/Asuna' ]; then
    rsync -av -delete ~/.ssh/ /Volumes/Asuna/ssh
fi
