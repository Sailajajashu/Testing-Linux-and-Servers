#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="/backups/nginx_backup_$DATE.tar.gz"

tar -czf $BACKUP_FILE /etc/nginx/ /usr/share/nginx/html/

echo "Backup created: $BACKUP_FILE" >> /backups/backup.log

# Verify backup
tar -tzf $BACKUP_FILE >> /backups/backup.log
