{ pkgs, ... }:
{
  users = {
    extraUsers.root = {
      shell = pkgs.zsh;
    };
    users.wwwrun.extraGroups = [ 
      "acme" 
    ];
  };
}
