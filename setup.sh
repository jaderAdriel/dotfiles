#!/bin/bash

set -e

DOT="$HOME/dotfiles/config"
FORCE=false
CONFIG_DIR="$HOME/.config"

if [ "$1" == "-f" ]; then
	FORCE=true
fi

loadConfig() {

	APP_DOT_DIR="$1"
	APP_CONFIG_DIR="$2"

	if [[ -d "$APP_CONFIG_DIR" && "$FORCE" != true ]]; then
		echo "Já existe configurações em $APP_CONFIG_DIR, execute com a tag -f para sobrescrever configurações antigas."
		return;
	fi
	
	if [ -d "$APP_CONFIG_DIR" ]; then
		rm -rf "$APP_CONFIG_DIR"
	fi

	ln -s "$APP_DOT_DIR" "$APP_CONFIG_DIR"
	echo "Link criado em $APP_CONFIG_DIR"
}

loadConfig "$DOT/waybar" "$CONFIG_DIR/waybar"
loadConfig "$DOT/wofi" "$CONFIG_DIR/wofi"
loadConfig "$DOT/hypr" "$CONFIG_DIR/hypr"
