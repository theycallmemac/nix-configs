{ modulesPath, ... }: {
  imports = [ 
    "${modulesPath}/virtualisation/amazon-image.nix" 
    ./home.nix
    ./networking.nix
    ./environment.nix
    ./users.nix
    ./common/region.nix
    ./services/httpd.nix
    ./services/ssh.nix
    ./services/fail2ban.nix
  ];
  ec2.hvm = true;
  ec2.efi = true;
  swapDevices = [ 
    { 
      device = "/swapfile";
    } 
  ];
}
