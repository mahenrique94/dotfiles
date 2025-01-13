# dotfiles
Commong config files

## Setting up

1. Fish Shell
2. `cp -r fish/ ~/.config/fish`
3. `echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells && chsh -s /opt/homebrew/bin/fish`
4. Git global config
5. `cp .gitconfig ~/.gitconfig`
6. Warp
7. `mkdir -p ~/.warp/themes/`
8. `wget https://raw.githubusercontent.com/daltonmenezes/aura-theme/main/packages/warp/aura-theme.yaml`
9. `mv aura-theme.yaml ~/.warp/themes`
10. Hammerspoon
11. `cp init.lua ~/.hammerspoon/`
12. Starship
13. `cp starship.toml ~/.config/`
14. Neovim
15. `mkdir -p ~/.config/nvim`
16. `cp ./nvim/init.lua ~/.config/nvim/`
