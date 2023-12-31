# ssh-container

## Simple SSH container

login: dragon
password: nimda

## Build container

```bash
$ docker build -t alpine-sshd .
```

## Start container

```bash
$ docker run --name sshd_app -d -p 22:22 alpine-sshd:latest
```

## License & Contributors

Copyright (c) 2023 [Volodymyr Nerovnia](https://github.com/nerovnia).

ssh-container is [MIT licensed](./LICENSE).
