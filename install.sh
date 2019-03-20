#! /usr/bin/env bash

set -euo pipefail

main () {
  if [ -e "$HOME/.git_template" ];
  then
    mv "$HOME/.git_template" "$HOME/.git_template_backup_$(date +%s)"
  fi

  git clone https://github.com/rhiroyuki/git_template.git ~/.git_template

  git config --global init.templatedir "$HOME/.git_template"

  chmod +x ~/.git_template/hooks/*

  echo 'Script finished'
}

main
