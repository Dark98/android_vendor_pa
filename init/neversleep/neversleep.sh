#!/vendor/bin/sh

# HACK: Little helper script to set default neversleep option

_neversleep=$(getprop persist.vendor.neversleep)
if [ "$_neversleep" = "" ]; then
    setprop persist.vendor.neversleep 1
    log -t "neversleep" -p w "HACK: Setting persist.vendor.neversleep to 1"
fi
