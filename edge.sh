# Fixer for fog (redmi 10c) or miui 13 a12
# Support no root and root devices

if ! [ $(id -u) -ne 2000 ] || [ $(id -u) -ne 0 ]; then
echo "[ERROR] Please run this script using ADB or Root!"
exit 1
fi

a=0
b=0
(
settings put system edge_pressure 0 && ((a + 1)) || ((b + 1))
settings put system edge_size 0 && ((a + 1)) || ((b + 1))
settings put system edge_type 0 && ((a + 1)) || ((b + 1))
setprop debug.input.normalizetouch true && ((a + 1)) || ((b + 1))
) >/dev/null 2>&1

echo "Success to apply: $a"
echo "Failed to apply: $b"
true
