#!/bin/bash
# Author: Martin Polednik

sudo rsync -av /usr/local /Volumes/container/

rsync -av ~/Library /Volumes/container/
rsync -av ~/Documents /Volumes/container/
rsync -av ~/Dropbox /Volumes/container/
rsync -av ~/Music /Volumes/container/
rsync -av ~/Pictures /Volumes/container/
rsync -av ~/.ssh /Volumes/container/ssh
rsync -av ~/Workflow /Volumes/container/

sudo rsync -av /usr/local /Volumes/Asuna/
rsync -av ~/Library /Volumes/Asuna/
rsync -av ~/.ssh /Volumes/Asuna/ssh
