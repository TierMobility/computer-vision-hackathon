# Instructions for connecting to the Drivery network.

Move to root folder. ( Two times cd ..)

1. First edit wpa_supplicant.conf file located in /etc/wpa_supplicant/ folder.
    1) sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
    2) Change the country to DE
    3) Type the following in addition what is present in the file.One of the team memebers Username and password can be used.

            network={
                ssid=”drivery”\
                scan_ssid=1\
                auth_alg=OPEN\
                key_mgmt=WPA-EAP\
                group=CCMP TKIP\
                eap=PEAP\
                identity=**"username"**\
                password=**"password"**\
                phase1="peaplabel=0"\
                phase2="auth=MSCHAPV2"\
            }
    4) Save (ctrl + o)
    5) Exit file (ctrl + x, yes)

2. Edit network interfaces.

    1) sudo nano /etc/network/interfaces
    2) Add the following lines to the existing file.
      
      source-directory /etc/network/interfaces.d
      auto lo\
      iface lo inet loopback\

      auto eth0\
      iface eth0 inet dhcp\

      allow-hotplug wlan0\
      iface wlan0 inet dhcp\
      wireless-power off\
      pre-up wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf\
      post-down killall -q wpa_supplicant\

    3) Save (ctrl + o)
    4) Exit file (ctrl+x, yes)

3. Reboot and internet should work. Note the desktop will indicate that No wireless interfaces found. This can be ignored.
