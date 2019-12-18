{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./networking.nix
    ../../services/ssh.nix
    ../../services/httpd.nix
  ];

  boot.cleanTmpDir = true;
  networking.hostName = "kyoto";
  networking.firewall.allowPing = true;
}
