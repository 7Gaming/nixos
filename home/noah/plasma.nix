{ pkgs, ... }:

{
  programs.plasma = {
    enable = true;
    overrideConfig = true;
  };
}
