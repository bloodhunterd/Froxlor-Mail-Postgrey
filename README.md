[![Release](https://img.shields.io/github/v/release/bloodhunterd/froxlor-mail-postgrey?style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-postgrey/releases)
[![Docker Build](https://img.shields.io/github/workflow/status/bloodhunterd/froxlor-mail-postgrey-docker/Docker?style=for-the-badge&label=Docker%20Build)](https://github.com/bloodhunterd/froxlor-mail-postgrey/actions?query=workflow%3ADocker)
[![Docker Pulls](https://img.shields.io/docker/pulls/bloodhunterd/froxlor-mail-postgrey?style=for-the-badge)](https://hub.docker.com/r/bloodhunterd/froxlor-mail-postgrey)
[![License](https://img.shields.io/github/license/bloodhunterd/froxlor-mail-postgrey?style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-postgrey/blob/master/LICENSE)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/bloodhunterd)

# Froxlor Mail Postgrey

Docker image of Postgrey for Froxlor Server Management Panel.

*This image is meant to be used with the [Froxlor Mail Docker](https://github.com/bloodhunterd/froxlor-mail-docker) image.*

## Deployment

### Docker Compose

```dockerfile
version: '2.4'

services:
  postgrey:
    image: bloodhunterd/froxlor-mail-postgrey
    volumes:
      - ./whitelist_clients.local:/etc/postgrey/whitelist_clients.local:ro
```

### Environment

| ENV | Values | Default | Description
| --- | ------- | ------- | -----------
| DELAY | Seconds | 120 | Delay in seconds before the attempted delivery is accepted.

### Ports

| Port | Description
| ---: | -----------
| 10023  | Postgrey

### Volumes

| Volume | Path | Read only | Description
| ------ | ---- | :-------: | -----------
| Whitelist | /etc/postgrey/whitelist_clients.local | &#10004; | Exclude listed IP's from delay. 

| &#10004; Yes | &#10008; No
| ------------ | -----------

## Update

Please note the [changelog](https://github.com/bloodhunterd/froxlor-mail-postgrey/blob/master/CHANGELOG.md) to check for configuration changes before updating.

## Build With

* [Postgrey](https://postgrey.schweikert.ch/)
* [Debian](https://www.debian.org/)
* [Docker](https://www.docker.com/)

## Authors

* [BloodhunterD](https://github.com/bloodhunterd)

## License

This project is licensed under the MIT - see [LICENSE.md](https://github.com/bloodhunterd/froxlor-mail-postgrey/blob/master/LICENSE) file for details.
