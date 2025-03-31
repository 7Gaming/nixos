# SSH KeyGen
c-sshkey() { 
  ssh-keygen -t ed25519 -C "$@"
}

# Zsh
hydrate() { 
  exec zsh 
}

# Git
gra() { 
  git remote add origin 
}

gs() {
  git status
}

ga() {
  git add "$@"
}

gaa() { 
  ga .
}

gc() {
  git commit -m "$@"
}

gca() { 
  gaa && gc "$@"
}

gpush() {
  git push origin "$@"
}

# NixOS
nixos-replace() { 
  sudo rsync -av --delete ~/.nixos/ /etc/nixos/ 
}

switch() { 
  sudo nixos-rebuild switch
}

nixos-gca() {
  cd ~/.nixos/ || return
  gca "$1" || return
  cd -
}

nixos-backup() {
  cd ~/.nixos/ || return
  gpush master 
  cd -
}

rebuild-local() {
  nixos-gca "$1" || return
  nixos-replace || return
  switch
  hydrate
}

rebuild() {
  nixos-gca "$1" || return
  nixos-backup || return
  nixos-replace || return
  switch
  hydrate
}