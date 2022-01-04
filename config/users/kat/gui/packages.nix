{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    _1password
    btop
    bitwarden
    obsidian
    discord
    exiftool
    thunderbird
    mumble-develop
    dino-omemo
    tdesktop
    headsetcontrol
    transmission-remote-gtk
    scrcpy
    lm_sensors
    p7zip
    zip
    unzip
    nyxt
    baresip
    yubikey-manager
    jmtpfs
    cryptsetup
  ] ++ lib.optional config.wayland.windowManager.sway.enable element-wayland
  ++ lib.optional config.xsession.windowManager.i3.enable element-desktop;
}
