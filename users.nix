{ pkgs, ... }:
{
  users.extraUsers.root = {   
    shell = pkgs.fish;
  };
}
