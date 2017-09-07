#!/usr/bin/env bash
set -e

sudo -H -u appuser bash -c "
    source ~/.rvm/scripts/rvm
    cd reddit && puma -d
"