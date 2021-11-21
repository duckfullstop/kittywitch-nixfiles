{ config, lib, inputs, ... }:

/*
  This hardware profile corresponds with the imperatively provisioned hetzner cloud box.
*/

with lib;

{
  deploy.profile.hardware.hcloud-imperative = true;

  imports = [ (inputs.nixpkgs + "/nixos/modules/profiles/qemu-guest.nix") ];
  boot.initrd.availableKernelModules = [ "ata_piix" "uhci_hcd" "virtio_pci" "sd_mod" "sr_mod" ];
}
