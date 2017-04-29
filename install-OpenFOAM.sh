#!/bin/bash
USER=$1
LICIP=$2
HOST=`hostname`
DOWN=$3
echo $USER,$LICIP,$HOST,$DOWN

wget -q http://azbenchmarkstorage.blob.core.windows.net/foambenchmarkstorage/OF_IMPI.tgz -O /mnt/resource/scratch/INSTALLERS/OF_IMPI.tgz

tar -xzf /mnt/resource/scratch/INSTALLERS/OF_IMPI.tgz -C /mnt/resource/scratch/applications/

rm /mnt/resource/scratch/INSTALLERS/*.tgz

chown -R $USER:$USER /mnt/resource/scratch/*
chown -R $USER:$USER /mnt/nfsshare