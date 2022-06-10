#!/bin/sh

borg create /mnt/sdcard/backup::Dev-$(date '+\%m-\%d-\%Y') ~/dev/
borg prune -v --list --keep-within=3d /mnt/sdcard/backup
rclone sync /mnt/sdcard/backup backblaze:/borgrepo-lenovo/
