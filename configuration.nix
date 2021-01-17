{ modulesPath, ... }: {
  imports = [ 
    "${modulesPath}/virtualisation/amazon-image.nix" 
    ./common/region.nix
    <home-manager/nixos>
    ./home-manager
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
