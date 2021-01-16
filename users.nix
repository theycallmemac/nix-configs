{ pkgs, ... }:
{
  users.extraUsers.root = {
    shell = pkgs.zsh;
  };
  users = {
    users.wwwrun.extraGroups = [ 
      "acme" 
    ];
  };
}
