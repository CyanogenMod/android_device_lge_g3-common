emmc_size=`cat /sys/block/mmcblk0/size`

case "$emmc_size" in
        "61071360")
    setprop persist.sys.emmc_size 32G
    echo 32G model
    ;;
esac

case "$emmc_size" in
        "30777344")
    setprop persist.sys.emmc_size 16G
    echo 16G model
    ;;
esac
