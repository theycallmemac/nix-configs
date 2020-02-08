{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./networking.nix
    ../../services/ssh.nix
    ../../services/httpd.nix
    ../../services/icecast.nix
    ../../services/consul.nix
    ../../services/vault.nix
  ];
  boot.cleanTmpDir = true;
  networking.hostName = "kyoto";
  networking.firewall.allowPing = true;
}
