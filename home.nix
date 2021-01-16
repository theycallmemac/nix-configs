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
      oh-my-zsh = {
        enable = true;
        extraConfig = ''
          export PROMPT='%(?.%F{green}✓.%F{red}✗)%f %B%F{240}%1f %n %F{blue}on%f %m %F{blue}in%f %/ %b -> ' 
        '';
      };
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
    programs.tmux = {
      enable = true;
      clock24 = true;
      extraConfig = ''
        # remap prefix from 'C-b' to 'C-a'unbind C-b
        set-option -g prefix C-a
        bind-key C-a send-prefix

        # split panes using | and -
        bind v split-window -h
        bind h split-window -v
        unbind '"'
        unbind %

        # reload config file (change file location to your the tmux.conf you want to use)
        bind r source-file ~/.tmux.conf

        # switch panes using Alt-arrow without prefix
         bind -n M-Left select-pane -L
         bind -n M-Right select-pane -R
         bind -n M-Up select-pane -U
         bind -n M-Down select-pane -D

        # enble mouse mode (tmux 2.1 and above)#
        set -g mouse on

        ## Status bar design
        # status line
        set -g status-justify left
        set -g status-bg default
        set -g status-fg colour12
        set -g status-interval 2

        # window status
        setw -g window-status-format " #F#I:#W#F "
        setw -g window-status-current-format " #F#I:#W#F "
        setw -g window-status-format "#[fg=magenta]#[bg=black] #I #[bg=cyan]#[fg=colour8] #W "
        setw -g window-status-current-format "#[bg=brightmagenta]#[fg=colour8] #I #[fg=colour8]#[bg=colour14] #W "

        # Info on left (I don't have a session display for now)
        set -g status-left ""

        # loud or quiet?
        set-option -g visual-activity off
        set-option -g visual-bell off
        set-option -g visual-silence off
        set-window-option -g monitor-activity off
        set-option -g bell-action none

        set -g default-terminal "screen-256color"

        # The modes
        setw -g clock-mode-colour colour135

        # The statusbar
        set -g status-position bottom
        set -g status-bg colour234
        set -g status-fg colour137
        set -g status-left ""
        set -g status-right "#[fg=colour233,bg=colour241,bold] %d/%m #[fg=colour233,bg=colour245,bold] %H:%M:%S "
        set -g status-right-length 50
        set -g status-left-length 20
        
        setw -g window-status-current-format " #I#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F "
        setw -g window-status-format " #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F "
      '';
    };
  };
}
