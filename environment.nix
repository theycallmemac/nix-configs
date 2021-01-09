{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.git 
    pkgs.vim 
    pkgs.htop 
    pkgs.bind
  ];
}
