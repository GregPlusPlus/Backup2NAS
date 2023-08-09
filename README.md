# Backup2NAS
A small set of scripts that I use to backup my computers to my NAS.
The script uses _rsync_ to do the synchronization between the computer and the NAS.

During the sync, deleted or modified files are automatically copied to a timestamped backup folder. So it is always possible to go back to a previous state.

## Usage

File description :
- [start_backup.bat](start_backup.bat) : A bat file to run the script in WSL $^1$ on Windows. The user should edit the parameters.
- [backup_docs.sh](backup_docs.sh) : The script which calls the "do_backup" function for each folder that must be backuped. The user should customize this file according to his needs.
- [backup2nas.sh](backup2nas.sh) : The file that does the backup using _rsync_. The user should not to modify this script.

"do_backup" function parameters :
1. Absolute path to the backup folder on the NAS
2. The folder that must be backuped (for instance "Documents" or "Pictures")
3. The name of the "backup of backup" folder to store deleted or modified files
4. NAS IP or domain name
5. SSH User
6. SSH Password

[backup_docs.sh](backup_docs.sh) can be called directly with the parameters :

``./backup_docs.sh <NAS_IP> "<SSH_USR>" "<SSH_PWD>" "<SRC_DIR>" "<DEST_DIR>"``


$^1$ WSL1 is preferred as file access in ``/mnt/x/`` is very slow with WSL2