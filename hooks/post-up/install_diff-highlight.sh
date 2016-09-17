#!/bin/sh

set -eu

curl --create-dirs -fLSso "$HOME"/.local/bin/diff-highlight \
  https://git.kernel.org/cgit/git/git.git/plain/contrib/diff-highlight/diff-highlight
chmod 0700 "$HOME"/.local/bin/diff-highlight
