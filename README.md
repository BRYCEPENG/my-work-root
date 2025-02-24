# The simple step to build your IDE by modified LazyVim.

## Using environment:
- Ubuntu 18:04
## NeoVim version:
- v0.10.4, https://github.com/neovim/neovim/releases/tag/v0.10.4
## Bear version:
- 2.4.4, https://github.com/rizsotto/Bear/releases/tag/2.4.4

## USAGE:
- Run commands:
    - cp ./nvim ~/.config/nvim
    - nvim
- After Lazy's plugin upgrading has done, then run command:
    - cp ./lazy-lock.json ~/.config/nvim/lazy-lock.json
- Finally run  command to restore the specified version by lazy-lock.json:
    - :Lazy restore
