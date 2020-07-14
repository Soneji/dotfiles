#!/bin/sh

function ting {
    UPSTREAM=${1:-'@{u}'}
    LOCAL=$(yadm rev-parse @)
    REMOTE=$(yadm rev-parse "$UPSTREAM")
    BASE=$(yadm merge-base @ "$UPSTREAM")

    if [ $LOCAL = $REMOTE ]; then
        echo "Up-to-date"
    elif [ $LOCAL = $BASE ]; then
        echo "Need to pull"
        touch ~/.cache/dotfiles_update
    elif [ $REMOTE = $BASE ]; then
        echo "Need to push"
    else
        echo "Diverged"
    fi
}

(&>/dev/null ting &)

if [ -f ~/.cache/dotfiles_update ]; then
    echo "Need to pull"

    echo 'Do you want to update now? (y/n)'

    old_stty_cfg=$(stty -g)
    stty raw -echo ; answer=$(head -c 1) ; stty $old_stty_cfg # Careful playing with stty
    if echo "$answer" | grep -iq "^y" ;then
        yadm stash
        yadm pull
        yadm stash apply
    fi
    rm -f ~/.cache/dotfiles_update
fi
