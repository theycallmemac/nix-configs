{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./tmux.nix
    ./vim.nix
    ./zsh.nix
  ];
  environment.systemPackages = [
    pkgs.awscli
    pkgs.bind
    pkgs.go
    pkgs.hugo
    pkgs.htop
    pkgs.python3
  ];
}
