#!/bin/sh

borg create /mnt/sdcard/backup::archive-{hostname}-{now}  \
	~/dev/ \
	~/Documents/ 

borg prune -v --list --keep-within=3d /mnt/sdcard/backup
rclone sync /mnt/sdcard/backup backblaze:/borgrepo-lenovo/
