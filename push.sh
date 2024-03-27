#!/usr/bin/env bash
if [[ `git status --porcelain` ]]; then
  git add .
  if [[ $# -eq 0 ]]; then
    git commit -m "docs: $(date +"%Y-%m-%d %T") snapshot"
  else
    git commit -m "$1"
  fi
  git push origin
else
  echo 'There are no changes in this vault. Aborting commit...'
fi
