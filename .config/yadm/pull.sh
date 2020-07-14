#!/bin/sh

UPSTREAM=${1:-'@{u}'}
LOCAL=$(yadm rev-parse @)
REMOTE=$(yadm rev-parse "$UPSTREAM")
BASE=$(yadm merge-base @ "$UPSTREAM")

if ! [ $LOCAL = $REMOTE ]; then
    echo "Need to pull"

    echo 'Do you want to update now? (y/n)'
    
    old_stty_cfg=$(stty -g)
    stty raw -echo ; answer=$(head -c 1) ; stty $old_stty_cfg # Careful playing with stty
    if echo "$answer" | grep -iq "^y" ;then
        yadm stash
        yadm pull
    fi
fi
