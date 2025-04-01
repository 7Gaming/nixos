{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];

      userSettings = {
        "files.autoSave" = "off";
        "editor.formatOnSave" = true;
      };
    };
  };
}
