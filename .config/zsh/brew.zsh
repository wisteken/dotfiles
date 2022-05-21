OSTYPE="$(uname -s)"
OSARCH="$(uname -m)"

if [ "$OSTYPE" = "Darwin" ] && [ "$OSARCH" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
