# Dotfiles

- Last modified date: 2024-10-11

## Status Quo

- Items added:

  - .zshrc
  - .config
    - aerospace
    - wezterm
    - starship
    - yazi
    - nvim
    - gh
  - .Brewfile
  - .gitconfig (needs to be encrypted)

- TO DOs
  - Template!
    - For desktop, and laptop enviroments, by host-name condition.
  - Password Manager integration
    - Bitwarden

## Setup a New Enviroment

1. Install Homebrew by running curl command `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` .
2. Run chezmoi command `chezmoi init https://github.com/jimiaki7/dotfiles.git` and `chezmoi -v apply` to get all the dotfiles (including Brewfile).
   1. Or use this command to install chezmoi and dotfiles at once. `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply jimiaki7`
3. Run `brew bundle` to install everything in Brewfile.
