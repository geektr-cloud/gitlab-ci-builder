# Deprecated!!!

project moved to [github](https://github.com/geektr-cloud/gitlab-ci-builder)


# Gitlab CI Builder

packages:

```
openssh-client wget zip unzip git tree gcc
g++ build-essential cmake apt-transport-https
ca-certificates openssl
```

features:

1. enviroment varibles: `$SSH_PRIVATE_KEY`, `$SSH_SSH_PRIVATE_KEY_0` to `$SSH_PRIVATE_KEY_4` will auto pipe into `ssh-add`.

2. `$GIT_USER_NAME`, `$GIT_USER_EMAIL` will set as git global config if they are exist.

3. if `$SSH_KNOWN_HOSTS` exist, it will write to `~/.ssh/known_hosts`, if it's empty, ssh `StrictHostKeyChecking` will be closed.

## node

`gcbuilder/node`

commands: node, npm, yarn & cnpm
