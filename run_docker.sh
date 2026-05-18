# shellcheck shell=bash

docker run --rm -it \
  -u "$(id -u)":"$(id -g)" \
  -v "$(pwd)":/workdir:z \
  ghcr.io/zephyrproject-rtos/zephyr-build:latest \
  bash
