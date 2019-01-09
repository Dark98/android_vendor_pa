#!/vendor/bin/sh

# HACK: Little helper script to set default neversleep option

_neversleep=$(getprop persist.vendor.neversleep)
if [ $_neversleep == "" ]
then
    setprop persist.vendor.neversleep 1
fi

