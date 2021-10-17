#!/bin/bash
git fetch upstream

# rebase on latest tag
git rebase $(git describe --tags --abbrev=0 upstream/master)
qmk git-submodule

# update keymap
git submodule update --remote keyboards/splitkb/kyria/keymaps/diaoul
