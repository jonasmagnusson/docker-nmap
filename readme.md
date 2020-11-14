# Docker Nmap

This is a small docker image containing [Nmap](https://github.com/nmap/nmap), [Vulners Script](https://github.com/vulnersCom/nmap-vulners) and [Bootstrap XML](https://github.com/honze-net/nmap-bootstrap-xsl).

## Installation

Clone this repository and build the Docker image:

```bash
# Git clone repository
git clone https://github.com/jonasmagnusson/docker-nmap.git

# Build docker image
docker build --tag nmap:latest .
```

## Usage

Run scan against Nmap test servers:

```bash
# Run test scan
docker run --rm -it -v "$(pwd)"/data/:/data nmap:latest sh /tmp/scan.sh nmap-scanme "scanme.nmap.org"
```
