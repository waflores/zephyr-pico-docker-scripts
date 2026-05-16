# questionable use of ./zephyr as our workspace
cd ./zephyr

# remove previous build directory
rm -rf ./build

# time west how long it takes to build project
time west build --pristine -b rpi_pico ./samples/basic/minimal
