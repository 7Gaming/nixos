{ pkgs, ... }@inputs:
{
  # Bootloader.
  boot.loader.systemd-boot.enable = false;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;

  # Kernel Version
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
