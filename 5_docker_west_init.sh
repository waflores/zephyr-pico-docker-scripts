# shellcheck shell=bash
# run west init if needed
if [ -d "./zephyr/.west" ]; then
  echo "Skipping 'west init' since ./zephyr/.west exists"
else
  cd ./zephyr || exit
  echo "Running 'west init' from $(pwd)"
  west init
fi
