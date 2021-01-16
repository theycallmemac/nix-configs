{
  home-manager.users.root = { pkgs, ... }: {
    programs.git = {
      enable = true;
      userName  = "James McDermott";
      userEmail = "james.mcdermott7@mail.dcu.ie";
    };
  };
}
