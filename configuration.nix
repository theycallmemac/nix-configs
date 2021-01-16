{ modulesPath, ... }: {
  imports = [ 
    "${modulesPath}/virtualisation/amazon-image.nix" 
    ./common/region.nix
    ./environment.nix
    <home-manager/nixos>
    ./home-manager/root/vim.nix
    ./home-manager/root/tmux.nix
    ./home-manager/root/zsh.nix
    ./home-manager/root/git.nix
    ./networking.nix
    ./services/cron.nix
    ./services/httpd
    ./services/ssh.nix
    ./services/fail2ban.nix
    ./users.nix
  ];
  ec2.hvm = true;
  ec2.efi = true;
  swapDevices = [ 
    { 
      device = "/swapfile";
    } 
  ];
}
