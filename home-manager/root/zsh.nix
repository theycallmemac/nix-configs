{
  home-manager.users.root = { pkgs, ... }: {
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        extraConfig = ''
          export PROMPT='%(?.%F{green}✓.%F{red}✗)%f %B%F{240}%1f %n %F{blue}on%f %m %F{blue}in%f %/ %b-> ' 
        '';
      };
    };
  };
}
