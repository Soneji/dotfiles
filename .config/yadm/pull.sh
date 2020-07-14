#!/bin/sh

function ting {
    yadm pull --dry-run | grep -q -v 'Already up-to-date.' || 
        touch ~/.cache/dotfiles_update
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
fi
