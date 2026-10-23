-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
  -- Shell & Bars
  hl.exec_cmd("noctalia")

  -- Core Daemons
  hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme \"Square\"")
end)
