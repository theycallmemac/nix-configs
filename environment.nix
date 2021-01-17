{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.awscli
    pkgs.bind
    pkgs.git 
    pkgs.hugo
    pkgs.htop 
    pkgs.pass
    pkgs.tmux
    pkgs.vim 
  ];
}
