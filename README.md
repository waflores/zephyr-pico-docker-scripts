
# `zephyr-pico-docker-scripts`

As the name implies, these are experimental scripts to build simple zephyr microcontroller image with docker.

These scripts are written to work with bash on Linux.

Currently these scripts achieve a very specific goal:
> Enable builtin Zephyr shell commands for I2C and GPIO for `zephyr/samples/basic/minimal` for the `rpi_pico` board, per its Zephyr definition.

It should be straightforward to modify these scripts to achieve your own goals.

## Quick Start

Run the enumerated scripts in order.

```
./1_host_set_permissions.sh
./2_host_clone_zephyr.sh
./3_host_modify_kconfigs.sh
./4_run_docker.sh
./5_docker_west_init.sh
./6_docker_build.sh
```



