#!/bin/sh

test -e "${HOME}/.gitconfig" && mv -f "${HOME}/.gitconfig" "${HOME}/.gitconfig_backup"
ln -sfn "${HOME}/sirius1pro/.gitconfig" "${HOME}/.gitconfig"

test -e "${HOME}/.vimrc" && mv -f "${HOME}/.vimrc" "${HOME}/.vimrc_backup"
ln -sfn "${HOME}/sirius1pro/.vimrc" "${HOME}/.vimrc"

test -e "${HOME}/.zshrc" && mv -f "${HOME}/.zshrc" "${HOME}/.zshrc_backup"
ln -sfn "${HOME}/sirius1pro/.zshrc" "${HOME}/.zshrc"

test -e "${HOME}/.config/yazi" && mv -f "${HOME}/.config/yazi" "${HOME}/.config/yazi_backup"
ln -sfn "${HOME}/sirius1pro/yazi" "${HOME}/.config/yazi"

test -e "${HOME}/.config/kitty" && mv -f "${HOME}/.config/kitty" "${HOME}/.config/kitty_backup"
ln -sfn "${HOME}/sirius1pro/kitty" "${HOME}/.config/kitty"

test -e "${HOME}/.config/ghostty" && mv -f "${HOME}/.config/ghostty" "${HOME}/.config/ghostty_backup"
ln -sfn "${HOME}/sirius1pro/ghostty" "${HOME}/.config/ghostty"

test -e "${HOME}/.config/alacritty" && mv -f "${HOME}/.config/alacritty" "${HOME}/.config/alacritty_backup"
ln -sfn "${HOME}/sirius1pro/alacritty" "${HOME}/.config/alacritty"

test -e "${HOME}/.config/nvim" && mv -f "${HOME}/.config/nvim" "${HOME}/.config/nvim_backup"
ln -sfn "${HOME}/sirius1pro/nvim" "${HOME}/.config/nvim"

test -e "${HOME}/.config/zellij" && mv -f "${HOME}/.config/zellij" "${HOME}/.config/zellij_backup"
ln -sfn "${HOME}/sirius1pro/zellij" "${HOME}/.config/zellij"

