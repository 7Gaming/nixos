{ pkgs, ... }:

{
  programs.plasma = {
    enable = true;
    overrideConfig = true;

    workspace = {
      theme = "breeze-dark";
    };
  };
}
