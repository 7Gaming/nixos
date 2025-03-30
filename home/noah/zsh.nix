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
      # SSH KeyGen
      c-sshkey = "ssh-keygen -t ed25519 -C";

      # Fuck
      f = "fuck";
      
      # Zsh
      hydrate = "exec zsh";
      
      # Git
      gs = "git status";
      ga = "git add";
      gaa = "ga --all";

      gc = "git commit -m";
      gca = "gaa && gc";

      # Nixos
      nixos-backup = "";
      nixos-gca = "cd ~/.nixos/ && gca $1 && cd -";
      nixos-replace = "sudo rsync -av --delete ~/.nixos/ /etc/nixos/";
      switch = "sudo nixos-rebuild switch";
      rebuild = "nixos-gca $1 && nixos-backup && nixos-replace && switch && hydrate";
    };
  };
}
