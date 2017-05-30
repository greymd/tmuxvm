#!/bin/bash
set -u
readonly _THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%N}}")"; pwd)"
readonly _BIN="$(cat "$_THIS_DIR/tmuxvm" | gzip | base64 | tr -d '\n')"

echo '#!/bin/bash
set -e
readonly _USER_HOME="${HOME:-/etc}"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$_USER_HOME/.config}"
readonly _CONFIG_HOME="${XDG_CONFIG_HOME}/tmuxvm"
mkdir -p "$_CONFIG_HOME/bin"
readonly _BIN="'$_BIN'"
echo "$_BIN" | base64 --decode | gzip -d > "$_CONFIG_HOME/bin/tmuxvm"
chmod +x "$_CONFIG_HOME/bin/tmuxvm"

echo "tmuxvm is successfully installed."
echo "Please edit your ~/.bashrc or ~/.zshrc and add this line."
echo
echo "[ -e \"\$HOME/.config/tmuxvm/bin\" ] && export PATH=\"\$HOME/.config/tmuxvm/bin:\$PATH\""
' > install.sh

