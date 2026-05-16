PRJ_PATH=./zephyr/samples/basic/minimal/prj.conf

# NOTE: KCV = KConfig Value

# NOTE: this grep 'trick' adds this line of text if it does not already exist in the file
# NOTE: - i.e., this script should be 'idempotent'

KCV="CONFIG_SHELL=y"
grep -xqF $KCV $PRJ_PATH || echo $KCV >>$PRJ_PATH

KCV="CONFIG_GPIO=y"
grep -xqF $KCV $PRJ_PATH || echo $KCV >>$PRJ_PATH
KCV="CONFIG_GPIO_SHELL=y"
grep -xqF $KCV $PRJ_PATH || echo $KCV >>$PRJ_PATH

KCV="CONFIG_I2C=y"
grep -xqF $KCV $PRJ_PATH || echo $KCV >>$PRJ_PATH

KCV="CONFIG_I2C_SHELL=y"
grep -xqF $KCV $PRJ_PATH || echo $KCV >>$PRJ_PATH
