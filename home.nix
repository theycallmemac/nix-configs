{ pkgs, ... }:
{
  imports = [ <home-manager/nixos> ];
  home-manager.users.root = { pkgs, ... }: {
    programs.git = {
      enable = true;
      userName  = "James McDermott";
      userEmail = "james.mcdermott7@mail.dcu.ie";
    };
    programs.zsh = {
      enable = true;
      plugins = [ "git" ];
    };
    programs.vim = {
      enable = true;
      plugins = with pkgs.vimPlugins; [ 
        vim-airline 
        ale 
        vim-fugitive 
        vim-gitgutter 
      ];
      settings = { 
        ignorecase = true;
        number = true;
      };
      extraConfig = ''
        set shiftwidth=4
        set softtabstop=4
        set expandtab
        filetype plugin indent on
        syntax on
        let g:ale_fixers = {'javascript': ['eslint'], 'python': ['autopep8'], 'rust': ['cargo'], 'html': ['alex'], 'css': ['prettier']}
        let g:ale_fix_on_save = 1
      '';
    };
  };
}
