@echo off

:: The user should replace the parameters in brackets "<>" by the right values.
:: The user should customize which folder to backup in "backup_docs.sh"
wsl --cd "<WHERE_THE_SCRIPTS_ARE_LOCATED>" ./backup_docs.sh <NAS_IP> "<SSH_USR>" "<SSH_PWD>" "<SRC_DIR>" "<DEST_DIR>"

timeout 5