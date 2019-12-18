{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./networking.nix
    ../../services/ssh.nix
    
  ];

  boot.cleanTmpDir = true;
  networking.hostName = "kyoto";
  networking.firewall.allowPing = true;
}
