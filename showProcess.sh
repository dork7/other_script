echo "Online Cores :" `cat /sys/devices/system/cpu/online`
echo "Active Cluster:" `cat /sys/kernel/cluster/active`
echo "CPU temp:" `cat /sys/devices/virtual/thermal/thermal_zone0/temp` " GPU temp:" `cat /sys/devices/virtual/thermal/thermal_zone1/temp`
echo "Clock Frequencies:"
if [ -e /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq ];
then echo "cpu 0 : " `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq`
else echo "cpu 0 : offline"
fi
if [ -e /sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq ];
then echo "cpu 1 : " `cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq`
else echo "cpu 1 : offline"
fi
if [ -e /sys/devices/system/cpu/cpu2/cpufreq/scaling_cur_freq ];
then echo "cpu 2 : " `cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_cur_freq`
else echo "cpu 2 : offline"
fi
if [ -e /sys/devices/system/cpu/cpu3/cpufreq/scaling_cur_freq ];
then echo "cpu 3 : " `cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_cur_freq`
else echo "cpu 3 : offline"
fi
