# dotfiles

Welcome to muh dotfiles repository. Here I store all muh configs

## How to install

```yaml
Universal: 
 sudo curl -fLo /bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && 
 sudo chmod a+x /bin/yadm &&
 yadm clone https://github.com/overclockedllama/dotfiles.git

Mac: 
 brew install yadm &&
 yadm clone https://github.com/overclockedllama/dotfiles.git

Arch (fresh install):
 pacman -Syu sudo git --noconfirm &&
 sudo curl -fLo /bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && 
 sudo chmod a+x /bin/yadm &&
 yadm clone https://github.com/overclockedllama/dotfiles.git

Arch (AUR with yay): 
 yay -Syu yadm-git &&
 yadm clone https://github.com/overclockedllama/dotfiles.git

Debian UNSTABLE/Ubuntu 20.04+: 
 sudo apt install yadm &&
 yadm clone https://github.com/overclockedllama/dotfiles.git
```

P.S. Just ignore the GPG password prompt (by pressing cancel or control c), as it's for my personal SSH keys

## Updates
This repository is regurlarly being updated. To update to the latest version of my dotfiles, run:
```bash
yadm pull
```

## Errors
### When cloning
If you encounter any error when cloning, run 
```bash
yadm stash
```
Then reclone with 
```
yadm clone -f https://github.com/overclockedllama/dotfiles.git
```
### Running bootstrap script
If you encounter any errors when running the bootstrap script, you can always rerun it with 
```bash
./.config/yadm/bootstrap
```
### Others
Please report any issues you have [here](https://github.com/overclockedllama/dotfiles/issues)

Congratulations, you now have muh ultimate rice setup for 1337 h4xx0r5 only

## Benchmarks
Speedtest
```
➜ for i in $(seq 1 10); do /usr/bin/time zsh -i -c exit; done
        0.30 real         0.19 user         0.10 sys
        0.30 real         0.19 user         0.10 sys
        0.30 real         0.19 user         0.09 sys
        0.29 real         0.18 user         0.09 sys
        0.29 real         0.18 user         0.09 sys
        0.29 real         0.18 user         0.09 sys
        0.33 real         0.21 user         0.10 sys
        0.36 real         0.22 user         0.12 sys
        0.40 real         0.25 user         0.13 sys
        0.36 real         0.22 user         0.12 sys
```
Much Fast, very zoom 🏎

## Screenshots
![](terminal.png)
![](vim.png)
