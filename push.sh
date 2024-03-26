#!/usr/bin/env bash
if [[ `git status --porcelain` ]]; then
  git add .
  git commit -m "docs: $(date +"%Y-%m-%d %T") snapshot"
  git push origin
else
  echo 'There are no changes in this vault. Aborting commit...'
fi
