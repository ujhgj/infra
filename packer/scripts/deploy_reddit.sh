#!/usr/bin/env bash
set -e

source ~/.rvm/scripts/rvm
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
