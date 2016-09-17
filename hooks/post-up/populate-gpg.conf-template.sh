#!/bin/sh

set -eu

ex -s -u NONE -c "%s,@@HOME@@,$HOME,g|x" "$HOME"/.gnupg/gpg.conf
