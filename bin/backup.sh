#!/usr/bin/env bash

if [ ! -d ./backups ]; then
  mkdir backups
fi

tar --exclude="./backups/*" -czvf ./backups/backup_$(date '+%Y%m%d_%H%M%S').tar.gz .
