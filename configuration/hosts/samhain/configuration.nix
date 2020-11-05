{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../common
      ../../desktop
      ../../gnome
      ../../gaming
      ../../development
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  home-manager.users.kat = {
    imports = [
      ./dconf.nix
    ];
  };
  
  networking.hostName = "samhain";
  networking.hostId = "617050fc"; 
  
  networking.useDHCP = false;
  networking.interfaces.enp34s0.useDHCP = true;

  system.stateVersion = "20.09";
  
}

