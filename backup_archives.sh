#!/bin/bash

# Defining the directory to move archived log files
archive_dir="archived_logs_group13"
logfile="backup_log.txt"

# Creating the directory if it doesn't exist
mkdir -p $archive_dir

# Logging the backup process
echo "$(date): Starting backup process..." >> $logfile

# Checking if there are any files to move
if ls heart_rate_log.txt_* 1> /dev/null 2>&1; then
    mv heart_rate_log.txt_* $archive_dir/
    if [ $? -eq 0 ]; then
        echo "$(date): Archived files moved to $archive_dir." >> $logfile
    else
        echo "$(date): Failed to move archived files." >> $logfile
        exit 1
    fi
else
    echo "$(date): No archived log files found." >> $logfile
fi

# Remote server details
remote_host="8669535c4480.6b7419f6.alu-cod.online"
remote_user="8669535c4480"
remote_dir="/home/"

# Ensure remote directory exists before transferring files
ssh -o StrictHostKeyChecking=no $remote_user@$remote_host "mkdir -p $remote_dir"

# Securely copying the files to the remote server using scp
scp -o StrictHostKeyChecking=no $archive_dir/* $remote_user@$remote_host:$remote_dir
if [ $? -eq 0 ]; then
    echo "$(date): Backup complete. Files successfully transferred to $remote_host:$remote_dir" >> $logfile
else
    echo "$(date): Backup failed. Please check SSH connection or credentials." >> $logfile
    exit 1
fi

