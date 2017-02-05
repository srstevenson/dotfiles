#!/bin/sh

set -eu

curl --create-dirs -fLSso ~/.local/bin/diff-highlight \
  https://git.kernel.org/cgit/git/git.git/plain/contrib/diff-highlight/diff-highlight
chmod +x ~/.local/bin/diff-highlight
