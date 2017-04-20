[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)]()

## Introduction

Docker image used to run migrations on [cassandra](https://github.com/mxpetit/bookx-cassandra/).

## Install

Just pull the image :
```sh
docker pull maximep/bookx-migration:latest
```

## Run

```sh
docker run -it maximep/bookx-migration -p 8081:8081
```