#!/bin/sh

set -eu

sed "s,@@HOME@@,$HOME," ~/.gnupg/gpg.conf >~/.gnupg/gpg.conf.tmp
mv ~/.gnupg/gpg.conf.tmp ~/.gnupg/gpg.conf
