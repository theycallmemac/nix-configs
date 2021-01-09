{ pkgs, ... }:
{
  imports = [ <home-manager/nixos> ];
  users.extraUsers.root = {
    shell = pkgs.zsh;
  };
  home-manager.users.root = { pkgs, ... }: {
    programs.git = {
      enable = true;
      userName  = "James McDermott";
      userEmail = "james.mcdermott7@mail.dcu.ie";
    };
  };
}
