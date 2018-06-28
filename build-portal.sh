#!/bin/sh -f

export REPOSITORY_SSH=git@git.paytvlabs.com.br:interatividade/portal-fit.git

git clone $REPOSITORY_SSH /tmp/portal
cd /tmp/portal
git checkout next-release
cd /tmp/portal/portal-fit-zapper
npm install
grunt --target=eng

