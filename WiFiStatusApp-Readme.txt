WiFiStatusApp: Menu bar status application that shows network name and signal level for USB WiFi networkadapters based on chip Realtek RTL8188.
--------------------

This OS X App is meant to provide a menubar status icon for WiFi USB network adapters based on chip Realtek RTL8188.
The status icon provided with original drivers seems to be useless and doesn't do anything.

This app makes use of Applescript to fetch values from original configuration utility provided with the driver of the USB adapter.

The configuration utility is supposed to be named "Wireless Network Utility"
Wireless Network Utility will be running in background since wee need it in order to fetch values such as network  name and Sgnal  level. For this reason, I modified its .plist file adding the row isUIElement (value YES) for hiding its icon from the doc.
The modified version of Wireless Network Utility is included in the release zip file together with WiFiStatusApp, for your convenience.

How to use it:
1) Install the drivers from your WiFi USB adapter
2) Modify (if you wish) the Info.plist file in Wireless Network Utility tool, or replace it with the one provided here.
3) Run WiFiStatusApp.
The first time you run it, you will get a security warning about GUI scripting.
You need to enable WiFiStatusApp inc System Preferences, from the window that will open.

Once done this, invoke the Configuration Menu from WiFiStatusApp and connect to a available network as usual.

IMPORTANT:
Wireless Network Utility GUI has five Tabs: Link Status, Profiles, Availbale Networks, WPS, Information

When working with Wireless Network Utility GUI, the icon of WiFiStatusApp will be set to different icon (gears) and no info will be shown. The icon will get the normal shape when the selected tab in Wireless Network Utility will be "Link Status" again.
This is because applescript reads values that are shown directly from GUI of Wireless Network Utility, even when it is hidden, and it needs "Link Status" to be the active tab in the app.

In short: invoke Wireless Network Utility with "Configuration" menu from WiFiStatusApp, do your desired settings in Wireless NetworkUtility, click on Link Status at the end and close it. in this way, WiFiStatusApp will show again information.

I tested and use it on 10.10.5 with the following WiFi USB adapters:

1)
TP-Link TL-WN725N
VID-:0BDA PID:8179
Realtek RTL8188EU chipset
Name shown in Network properties: 802.11n NIC

2)
EDIMAX EW-7811Un
VID: 7392 PID: 7811
Realtek RTL8188CU chipset
Name shown in Network properties: 802.11n WLAN Adapter

---------------

Related references:

http://www.insanelymac.com/forum/topic/303076-drivers-for-realtek-80211n-and-80211ac-usb-wi-fi-adapters/

http://www.osx86.net/file/4460-all-in-one-kext-for-realtek-chip-wireless-usb-adapters/