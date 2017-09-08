#!/usr/bin/env bash
set -e

printf "Deploying Reddit app ...\n"
sudo -H -u appuser bash -c "
    source ~/.rvm/scripts/rvm
    git clone https://github.com/Artemmkin/reddit.git
    cd reddit && bundle install
"

printf "Adding Reddit's Puma to systemd\n"
cat << EOF > /etc/systemd/system/reddit.service
[Unit]
Description=Puma HTTP Server for Reddit Application
After=network.target

[Service]
Type=simple
User=appuser
WorkingDirectory=/home/appuser/reddit
ExecStart=/bin/bash -c "source ~/.rvm/scripts/rvm && exec puma -b tcp://0.0.0.0:9292"
Restart=always

[Install]
WantedBy=multi-user.target
EOF

printf "Enabling start on boot\n"
systemctl enable reddit.service