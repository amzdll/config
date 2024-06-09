#!/bin/bash

OHMYPOSH_DIR="$HOME/.config/ohmyposh"

if [ ! -d "$OHMYPOSH_DIR" ]; then
  mkdir -p "$OHMYPOSH_DIR"
fi

cp ./ohmyposh/* "$OHMYPOSH_DIR"


if [ -f "$HOME/.zshrc" ]; then
  mv $HOME/.zshrc $HOME/.zshrc.bak3
  cp ./.zshrc $HOME/
fi