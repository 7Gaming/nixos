{ pkgs, ... }@inputs:
{
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}
