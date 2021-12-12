rm -rf hardware/samsung
git clone https://github.com/eurekadevelopment/Eureka-Kernel-Exynos7885-Q-R-S-private.git kernel/samsung/exynos7885 --depth=1 -b R8.1_rom
git clone https://github.com/lineageos/android_hardware_samsung_nfc hardware/samsung/nfc
git clone https://github.com/lineageos/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal.git hardware/samsung_slsi/scsc_wifibt/wifi_hal
git clone https://github.com/lineageos/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
if test -f device/samsung/universal7885-common/vendor_name; then
rm device/samsung/universal7885-common/vendor_name
fi
python3 device/samsung/universal7885-common/vendor_detect/main.py -d 0
echo "Generating A10 Makefiles"
./device/samsung/a10/setup.sh

