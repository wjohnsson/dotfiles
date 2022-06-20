#!/bin/sh

# battery-combined-udev.sh
#   Combines the energy level of multiple batteries into one, for use with polybar.
#   requires https://github.com/x70b1/polybar-scripts/blob/master/polybar-scripts/battery-combined-udev/95-battery.rules
#   to be placed into /etc/udev/rules.d/95-battery.rules
#
#   Slightly modified verison of:
#   https://github.com/x70b1/polybar-scripts/blob/master/polybar-scripts/battery-combined-udev/battery-combined-udev.sh

battery_print() {
    path_ac="/sys/class/power_supply/AC"
    path_battery_0="/sys/class/power_supply/BAT0"
    path_battery_1="/sys/class/power_supply/BAT1"

    ac=0
    battery_level_0=0
    battery_level_1=0
    battery_max_0=0
    battery_max_1=0

    # For coloring the output
    icon_color="%{F#458588}"
    text_color="%{F#928374}"

    if [ -f "$path_ac/online" ]; then
        ac=$(cat "$path_ac/online")
    fi

    if [ -f "$path_battery_0/energy_now" ]; then
        battery_level_0=$(cat "$path_battery_0/energy_now")
    fi

    if [ -f "$path_battery_0/energy_full" ]; then
        battery_max_0=$(cat "$path_battery_0/energy_full")
    fi

    if [ -f "$path_battery_1/energy_now" ]; then
        battery_level_1=$(cat "$path_battery_1/energy_now")
    fi

    if [ -f "$path_battery_1/energy_full" ]; then
        battery_max_1=$(cat "$path_battery_1/energy_full")
    fi

    battery_level=$(("$battery_level_0 + $battery_level_1"))
    battery_max=$(("$battery_max_0 + $battery_max_1"))

    battery_percent=$(("$battery_level * 100"))
    battery_percent=$(("$battery_percent / $battery_max"))

    if [ "$ac" -eq 1 ]; then
        # Charger is connected
        icon=""

        echo "$icon_color$icon $text_color$battery_percent%"
    else
        if [ "$battery_percent" -gt 85 ]; then
            icon=""
        elif [ "$battery_percent" -gt 60 ]; then
            icon=""
        elif [ "$battery_percent" -gt 35 ]; then
            icon=""
        elif [ "$battery_percent" -gt 10 ]; then
            icon=""
        else
            icon=""
        fi

        echo "$icon_color$icon $text_color$battery_percent%"
    fi
}

path_pid="/home/user/.config/polybar/battery-combined-udev.pid"
update_time=15

# Update loop
case "$1" in
    --update)
        pid=$(cat $path_pid)

        if [ "$pid" != "" ]; then
            kill -10 "$pid"
        fi
        ;;
    *)
        echo $$ > $path_pid

        trap exit INT
        trap "echo" USR1

        while true; do
            battery_print

            sleep $update_time &
            wait
        done
        ;;
esac
