#!/bin/bash
#backup with unique timestamp

# eg---> ./backup.sh <src> <dstn>
# src</home/kashyap/poem> dstn</home/kashyap/backup>

src=$1
dest=$2
timestamp=$(date '+%Y_%m_%d_%H_%M')
zip -r "$dest/backup-$timestamp.zip" $src >/dev/null
aws s3 sync "$dest" s3://kash-backups-devops

echo "backup completed and uploaded to s3"
