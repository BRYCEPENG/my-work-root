# The simple steps to build your IDE by modified LazyVim.

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
- Deal with Compatibility issues by restoring the specified in lazy-lock.json:
    - cp ./lazy-lock.json ~/.config/nvim/lazy-lock.json
    - :Lazy restore

## Setup clang(c/c++) and lua language server:
- Run nvim command:
    - :Mason
- Move icon to 'clang' and 'lua-language-server'.
- Type 'i' for installing such plugs.
- Type 'u' for updating such plugs after fully installed.
