#!/bin/bash

OHMYPOSH_DIR="$HOME/.config/ohmyposh"

if command -v brew >/dev/null 2>&1; then
    exit 1
fi

if [ ! -d "$OHMYPOSH_DIR" ]; then
  mkdir -p "$OHMYPOSH_DIR"
fi

cp ./ohmyposh/* "$OHMYPOSH_DIR"

if [ -f "$HOME/.zshrc" ]; then
  "Your .zshrc has been renamed .zshrc.bak."
  mv $HOME/.zshrc $HOME/.zshrc.bak
fi

cp ./.zshrc $HOME/

zsh
