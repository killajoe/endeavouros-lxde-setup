#!/bin/bash
dbus-launch dconf load / < ~/xed.dconf
chmod -R +x ~/set_once.sh
sed -i 's|\(@sh ~/set_once.sh\)|# \1|' ~/.config/lxsession/LXDE/autostart
rm ~/xed.dconf
rm ~/set_once.sh
