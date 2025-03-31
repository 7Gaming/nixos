{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
    };

    shellAliases = {
      # Fuck
      f = "fuck";
    };

    # Functions
    initExtraFirst = "source /etc/nixos/home/noah/zsh/functions.zsh";
  };
}
