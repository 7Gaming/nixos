{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    extensions = with pkgs.vscode-extensions; [
            jnoortheen.nix-ide
        ];
    };

    userSettings = {
      "editor.formatOnPaste" = false;
    };
}
