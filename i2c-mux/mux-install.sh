!/bin/sh -e
#
echo
echo
#
# Create the overlay file and put in /boot/overlays
sudo dtc -W no-unit_address_vs_reg -I dts -O dtb -@ -o /boot/overlays/i2c-mux-pca9546a.dtb ./i2c-mux-pca9546a.dts
sudo dtc -W no-unit_address_vs_reg -I dts -O dtb -@ -o /boot/overlays/i2c-mux-pca9546a.dtbo ./i2c-mux-pca9546a.dts
echo
#
# Put the required changes into /boot/config.txt
sudo sh -c "echo 'dtoverlay=i2c-mux-pca9546a,addr=0x70' >> /boot/config.txt"
#
#
echo
echo
echo "Please reboot to complete installation"

