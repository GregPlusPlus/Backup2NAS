#!/bin/bash

source backup2nas.sh

cd $4

# List of directories to backup contained in $4
# Up to the user to customize it.
do_backup "$5" "Documents" "bkp" $1 $2 $3
do_backup "$5" "Pictures" "bkp" $1 $2 $3
do_backup "$5" "Videos" "bkp" $1 $2 $3
do_backup "$5" "Music" "bkp" $1 $2 $3
do_backup "$5" "Downloads" "bkp" $1 $2 $3
