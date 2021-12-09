#!/bin/bash
dbus-launch dconf load / < ~/xed.dconf
chmod -R +x ~/.config/i3/scripts
sed -i 's|\(@sh ~/set_once.sh\)|# \1|' ~/.config/lxsession/LXDE/autostart
rm ~/xed.dconf
rm ~/set_once.sh
