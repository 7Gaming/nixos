{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userEmail = "noah.d.lindsey@gmail.com";
    userName = "noahd";
    extraConfig = {
      init.defaultBranch = "master";
    };
  };
}
