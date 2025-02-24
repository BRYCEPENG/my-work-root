# The simple steps to build your IDE by modified LazyVim.

## Using environment:
- Ubuntu 18:04

## NeoVim version:
- v0.10.4
- https://github.com/neovim/neovim/releases/tag/v0.10.4

## Bear version:
- 2.4.4
- https://github.com/rizsotto/Bear/releases/tag/2.4.4

## USAGE:
- 1. How to setup in linux:
    - cp ./nvim ~/.config/nvim
    - nvim
- 2. Deal with compatibility issue by restoring the specified in lazy-lock.json:
    - cp ./lazy-lock.json ~/.config/nvim/lazy-lock.json
    - :Lazy restore

## Setup clang(c/c++) and lua language server:
- 1. Run nvim command ':Mason'
- 2. Move icon to 'clang' and 'lua-language-server'.
- 3. Type 'i' for installing such plugin.
- 4. Type 'u' for updating plugin after fully installed.
