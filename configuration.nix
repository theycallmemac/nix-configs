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
  ];
  ec2.hvm = true;
}
