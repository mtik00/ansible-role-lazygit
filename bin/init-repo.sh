#!/usr/bin/env bash

# This script should only be used 1 time.  It's purpose is to configure your
# repository the first time.

if [[ ! $(git log 2>&1 > /dev/null) ]]; then
    echo "Repository is already configured"
    echo "...you'll need to figure out what needs to be ran, if anything."
    exit 1
fi

git init .
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
pre-commit autoupdate
pre-commit install
pre-commit install --hook-type commit-msg
git add .
git commit -m"feat: initial checkin"
cz changelog
git add CHANGELOG.md
git commit -m"docs: adding changelog"
cz bump --yes
