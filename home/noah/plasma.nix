{ pkgs, ... }:

{
  # https://github.com/shalva97/kde-configuration-files
  programs.plasma = {
    enable = true;
    overrideConfig = true;
  };
}
