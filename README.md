# Simple ZSH config
My config for zsh on my MacBook. I use it for C++ Qt development and you can delete some paths from this config on your pc. If you can change paths you can use this config on GNU/Linux too. 

---

> You should install JetBrains Mono Nerd font if your interface have some bugs with interface
```
brew install --cask font-jetbrains-mono-nerd-font
```

---

## Features
* Autosuggestions like on fish shell
* Neofetch output when opening a terminal
* Starship integrations
* Aliases for auto-correction and fast update of your packages
* Custom keybindings
* All directories and files in ls

## Must have packages
* Eza
* Bat
* Autojump
* Zsh-autosuggestions
* Zsh-syntax-highlighting
* Starship

### Quick installation
```
brew install eza bat autojump zsh-autosuggestions zsh-syntax-highlighting
```

## Packages in paths (you can delete some of them from paths)
* LLVM
* Qt6
* Qt5
* Dotnet-SDK

### Quick installation
```
brew install llvm qt5 qt6 starship dotnet-sdk 
```

## Fast package installation (all my packages for config)
```
brew install neovim llvm qt6 qt5 eza bat starship autojump zsh-autosuggestions zsh-syntax-highlighting fastfetch btop neofetch
```

# Config installation

> If you will change paths or do something else you should change this config before installation (Paste only "git clone" and "cd" to your terminal)

```
cd ~/
git clone https://github.com/RomanLivik/simple-zsh-config.git
mv .zshrc zshrc.bak
cd simple-zsh-config
cp .zshrc ~/
```
