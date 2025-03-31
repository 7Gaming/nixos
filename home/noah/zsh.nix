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
    initExtra = builtins.concatStringsSep "\n" [
      # Disable immediate exit on errors
      ''set +e''
      # SSH KeyGen
      ''c-sshkey() { ssh-keygen -t ed25519 -C "$1" }''
      # Zsh
      ''hydrate() { exec zsh }''
      # Git
      ''
      gra() { git remote add origin }

      gs() { git status }
      ga() { git add }
      gaa() { $(ga) --all }

      gc() { git commit -m "$1" }
      gca() { $(gaa) && $(gc) "$1" }

      gpush() { git push origin "$1" }
      ''
      # NixOS
      ''
      nixos-replace() { sudo rsync -av --delete ~/.nixos/ /etc/nixos/ }
      switch() { sudo nixos-rebuild switch }
      ''

      ''
      nixos-gca() {
        cd ~/.nixos/
        $(gca) "$1"
        cd -
      }
      ''

      ''
      nixos-backup() {
        cd ~/.nixos/
        $(gpush) master
        cd -
      }
      ''

      ''
      rebuild() {
        $(nixos-gca) "$1"
        $(nixos-backup)
        $(nixos-replace)
        $(switch)
        $(hydrate)
      }
      ''
    ];
  };
}
