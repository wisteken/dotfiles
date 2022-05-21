# Initialize tmux
TMUX_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/tmux"
mkdir -p "$(dirname $TMUX_HOME)"
TPM_HOME="${TMUX_HOME}/plugins/tpm"
mkdir -p "$(dirname $TPM_HOME)"

if [ ! -d $TPM_HOME ]; then
  git clone https://github.com/tmux-plugins/tpm $TPM_HOME
fi
