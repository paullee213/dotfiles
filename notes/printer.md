You need a URI of the printer, ppd, and a filter.

- To get the URI, use `lpinfo -v`
- Install the filter. In my case, its `sudo pacman -S epson-inkjet-printer-filter` (needed for the ppd).
- To get the ppd, install the filter or compile the binaries (`git clone https://aur.archlinux.org/epson-inkjet-printer-202101w.git`). Then grep it to get the ppd (`lpinfo -m | grep -i 202101w`). The ppd looks like this `epson-inkjet-printer-202101w/EPSON_L3210.ppd`.

Then use `lpadmin` to setup the printer:
`sudo lpadmin -p EPSON_L3210 -v "usb://EPSON/L3210%20Series?serial=583848563533333752&interface=1" -E -m "epson-inkjet-printer-202101w/EPSON_L3210.ppd"`
