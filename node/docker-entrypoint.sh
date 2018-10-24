#!/usr/bin/env bash

eval "$(ssh-agent -s)"

[ ! -z "$SSH_PRIVATE_KEY"   ] && echo "$SSH_PRIVATE_KEY"   | tr -d '\r' | ssh-add - > /dev/null
[ ! -z "$SSH_PRIVATE_KEY_0" ] && echo "$SSH_PRIVATE_KEY_0" | tr -d '\r' | ssh-add - > /dev/null
[ ! -z "$SSH_PRIVATE_KEY_1" ] && echo "$SSH_PRIVATE_KEY_1" | tr -d '\r' | ssh-add - > /dev/null
[ ! -z "$SSH_PRIVATE_KEY_2" ] && echo "$SSH_PRIVATE_KEY_2" | tr -d '\r' | ssh-add - > /dev/null
[ ! -z "$SSH_PRIVATE_KEY_3" ] && echo "$SSH_PRIVATE_KEY_3" | tr -d '\r' | ssh-add - > /dev/null
[ ! -z "$SSH_PRIVATE_KEY_4" ] && echo "$SSH_PRIVATE_KEY_4" | tr -d '\r' | ssh-add - > /dev/null

[ ! -z "$GIT_USER_NAME" ]  && git config --global user.name  "$GIT_USER_NAME"
[ ! -z "$GIT_USER_EMAIL" ] && git config --global user.email "$GIT_USER_EMAIL"

if [ -z "$SSH_KNOWN_HOSTS" ]; then
  echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
else
  echo "$SSH_KNOWN_HOSTS" > ~/.ssh/known_hosts
  chmod 644 ~/.ssh/known_hosts
fi
