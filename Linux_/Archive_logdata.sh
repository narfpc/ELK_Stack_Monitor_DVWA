### Archiving and Logging Data
### Step 1: Create, Extract, Compress, and Manage tar Backup Archives
## Command to **extract** the `TarDocs.tar` archive to the current directory:
tar -xf TarDocs.tar -C /$HOME/Projects

## Command to **create** the `Javaless_Doc.tar` archive from the `TarDocs/` directory, while excluding the `TarDocs/Documents/Java` directory:
tar czvf ~/Projects/Javaless_Docs.tar --exclude="/home/sysadmin/Projects/TarDocs/Documents/Java" ~/Projects/TarDocs/Documents/

# Command to ensure `Java/` is not in the new `Javaless_Docs.tar` archive:
tar -tf Javaless_Docs.tar | grep Java
 
### Step 2: Create, Manage, and Automate Cron Jobs
## Cron job for backing up the `/var/log/auth.log` file:
## at 6 a.m every wednesday with:
0 6 * * 3 tar -zcf /var/log/auth.tgz /var/log/auth.log

### Step 3: Write expansion command to create the four subdirectories:
sudo mkdir -p ~/backups/{freemem,diskuse,openlist,freedisk}

### `system.sh` script edits below
## Print free memory on the system and save it to free_mem.txt
free -h > /home/backups/freemem/free_mem.txt

## Prints disk usage and saves it to ~/backups/diskuse/disk_usage.txt
du -h > /home/backups/diskuse/disk_usage.txt

## Lists all open files and saves it to ~/backups/openlist/open_list.txt.
lsof > /home/backups/openlist/open_list.txt

## Prints file system disk space statistics and saves it to ~/backups/freedisk/free_disk.txt.
df -h > /home/backups/freedisk/free_disk.txt


## Make the `system.sh` script executable:
chmod +x system.sh

## Commands to test the script and confirm its execution:
cat diskuse/disk_usage.txt freedisk/free_disk.txt freemem/free_mem.txt openlist/open_list.txt 

## Command to copy `system` to system-wide cron directory:
cp ~/system1.sh /etc/cron.weekly


### Step 4. Manage Log File Sizes
## Run `sudo nano /etc/logrotate.conf` to edit the `logrotate` configuration file. 


#!/bin/bash
/var/log/auth.log {
    weekly
    rotate 7
    delaycompress
    notifempty
    missingok

}

##
