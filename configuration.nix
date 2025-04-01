# NixOS manual by running ‘nixos-help’

{ config, pkgs, ... }:

{
  # This is specific to my current device
  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/30A9-E7AA";
    fsType = "vfat";
    options = [
      "fmask=0077"
      "dmask=0077"
    ];
  };

  imports = [
    ./hardware-configuration.nix
    ./configuration
  ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Don't change this without reading what it does
  system.stateVersion = "24.11";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
