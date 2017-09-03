#!/usr/bin/env bash
set -e

./install_mongodb.sh
sudo -H -u appuser ./install_ruby.sh
sudo -H -u appuser ./deploy.sh