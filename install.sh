#!/bin/bash

OHMYPOSH_DIR="$HOME/.config/ohmyposh"

if [ ! -d "$OHMYPOSH_DIR" ]; then
  mkdir -p "$OHMYPOSH_DIR"
  cp ./ohmyposh/* "$OHMYPOSH_DIR"
  cp ./.zshrc $HOME/
fi