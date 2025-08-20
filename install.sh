#!/bin/bash -x
script_path=$(dirname "$(readlink -f "$0")")

for f in "${script_path}"/scripts/*.service; do
  sudo ln -s "${f}" "/etc/systemd/system/"
done
sudo systemctl daemon-reload

for f in "${script_path}"/scripts/*.sh; do
  ln -s "${f}" "${HOME}/.local/bin/"
done
