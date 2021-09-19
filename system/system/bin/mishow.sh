local chg_en=1

if [ -n "$1" ]; then
    chg_en=$1
fi

#echo "MIShow Control"

if [ "$chg_en" -eq "1" ]; then
# Enable charging
    echo 1 > /sys/class/power_supply/battery/charging_enabled
else
# Disable charging
    echo 0 > /sys/class/power_supply/battery/charging_enabled
fi
