{ modulesPath, ... }: {
  imports = [ 
    "${modulesPath}/virtualisation/amazon-image.nix" 
    ./networking.nix
    ./environment.nix
    ./common/region.nix
    ./services/httpd.nix
    ./services/ssh.nix
  ];
  ec2.hvm = true;
}
