#!/system/bin/sh

enable=`getprop persist.service.crash.enable`
boot=`getprop sys.boot_completed`

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

case $enable in
    "1")
        echo 1 > /sys/module/restart/parameters/download_mode
        echo 63 > /sys/module/msm_rtb/parameters/filter
        echo 1024 > /sys/kernel/debug/tracing/buffer_size_kb
        echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
        echo 1 > /sys/kernel/debug/tracing/events/irq/irq_handler_entry/enable
        echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_start/enable
        echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_end/enable
        case $boot in
            "1")
                stop mpdecision
                echo 1 > /sys/devices/system/cpu/cpu1/online
                echo 1 > /sys/devices/system/cpu/cpu2/online
                echo 1 > /sys/devices/system/cpu/cpu3/online
                echo 1 > /sys/bus/coresight/devices/coresight-etm0/enable
                echo 1 > /sys/bus/coresight/devices/coresight-etm1/enable
                echo 1 > /sys/bus/coresight/devices/coresight-etm2/enable
                echo 1 > /sys/bus/coresight/devices/coresight-etm3/enable
                echo 1 > /sys/bus/coresight/devices/coresight-tmc-etf/curr_sink
                start mpdecision
                ;;
            *)
                echo 1 > /sys/bus/coresight/devices/coresight-etm0/enable
                echo 1 > /sys/bus/coresight/devices/coresight-etm1/enable
                echo 1 > /sys/bus/coresight/devices/coresight-etm2/enable
                echo 1 > /sys/bus/coresight/devices/coresight-etm3/enable
                echo 1 > /sys/bus/coresight/devices/coresight-tmc-etf/curr_sink
                ;;
        esac
        ;;
    "0")
        echo 0 > /sys/module/restart/parameters/download_mode
        echo 0 > /sys/module/msm_rtb/parameters/filter
        echo 7 > /sys/kernel/debug/tracing/buffer_size_kb
        echo 0 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
        echo 0 > /sys/kernel/debug/tracing/events/irq/irq_handler_entry/enable
        echo 0 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_start/enable
        echo 0 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_end/enable
        echo 0 > /sys/bus/coresight/devices/coresight-etm0/enable
        echo 0 > /sys/bus/coresight/devices/coresight-etm1/enable
        echo 0 > /sys/bus/coresight/devices/coresight-etm2/enable
        echo 0 > /sys/bus/coresight/devices/coresight-etm3/enable
        echo 0 > /sys/bus/coresight/devices/coresight-tmc-etf/curr_sink
        ;;
esac
