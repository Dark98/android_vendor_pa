#!/vendor/bin/sh

# HACK: Little helper script to set default neversleep option

_neversleep=$(getprop persist.vendor.neversleep)
if [ $_neversleep = "1" ]; then
    log -t "neversleep" -p w "HACK: Disabling deep sleep. Set persist.vendor.neversleep to 0 to re-enable."
elif [ $_neversleep = "0" ]; then
    log -t "neversleep" -p w "Deep sleep enabled. Set persist.vendor.neversleep to 1 to disable deep sleep"
else
    setprop persist.vendor.neversleep 1
    log -t "neversleep" -p w "HACK: Setting persist.vendor.neversleep to 1"
    log -t "neversleep" -p w "HACK: Disabling deep sleep. Set persist.vendor.neversleep to 0 to re-enable"
fi
