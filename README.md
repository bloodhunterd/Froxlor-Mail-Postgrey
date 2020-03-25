[![Release](https://img.shields.io/github/v/release/bloodhunterd/froxlor-mail-postgrey-docker?include_prereleases&style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-postgrey-docker/releases)
[![Docker Build](https://img.shields.io/docker/cloud/build/bloodhunterd/froxlor-mail-postgrey?style=for-the-badge)](https://hub.docker.com/r/bloodhunterd/froxlor-mail-postgrey)
[![License](https://img.shields.io/github/license/bloodhunterd/froxlor-mail-postgrey-docker?style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-postgrey-docker/blob/master/LICENSE)

# Postgrey for Froxlor Mail

Docker Image of Postgrey for Froxlor Mail Server.

## Configuration

See example [Docker Compose file](https://github.com/bloodhunterd/froxlor-mail-postgrey-docker/blob/master/docker-compose.yml).

### Environment

| ENV | Values¹ | Default | Description
|--- |--- |---
| DELAY | 1 - ... | 120 | Delay in seconds before the attempted delivery is accepted.

¹ *Possible values are separated by a slash or a range is indicated by a dash.*

### Volumes

A whitelist of IP's can be added like this:

```bash
volumes:
    - ./whitelist_clients.local:/etc/postgrey/whitelist_clients.local:ro
```

## Update

Please note the [changelog](https://github.com/bloodhunterd/froxlor-mail-postgrey-docker/blob/master/CHANGELOG.md) to check for configuration changes before updating.

## Build With

* [Postgrey](https://postgrey.schweikert.ch/)
* [Debian](https://www.debian.org/)
* [Docker](https://www.docker.com/)

## Authors

* [BloodhunterD](https://github.com/bloodhunterd)

## License

This project is licensed under the Unlicense - see [LICENSE.md](https://github.com/bloodhunterd/froxlor-mail-postgrey-docker/blob/master/LICENSE) file for details.
