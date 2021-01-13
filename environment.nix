{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.git 
    pkgs.vim 
    pkgs.htop 
    pkgs.bind
    pkgs.awscli
    pkgs.pass
  ];
}
