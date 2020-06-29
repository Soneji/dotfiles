# dotfiles

Welcome to muh dotfiles repository. Here I store all muh configs

# example config
![](terminal.png)
![](vim.png)

 - First install `yadm`
```yaml
arch: sudo pacman -S yadm
mac: brew install yadm
noroot/ubuntu: curl -fLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/.local/bin/yadm && PATH="~/.local/bin/:$PATH"
debian UNSTABLE ONLY: sudo apt install yadm
```

 - Second clone muh dotfiles with yadm
```bash
yadm clone https://github.com/overclockedllama/dotfiles.git
```

 - 3rd change your default shell to zsh
 ```bash
chsh -s /bin/zsh
```

P.S. Just ignore the GPG password prompt (by pressing cancel or control c), as it's for my personal SSH keys

Congratulations, you now have muh ultimate rice setup for 1337 h4xx0r5 only
