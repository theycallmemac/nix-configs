{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./networking.nix # generated at runtime by nixos-infect
    
  ];

  boot.cleanTmpDir = true;
  networking.hostName = "osaka";
  networking.firewall.allowPing = true;
  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3xqFPNNTxE1Fa+lwKXKvXGctB5E5gt5l0xbsqS96oY0+gB5hhJrkz2F5O24pQdZdbRzDFzGWm/K4kD4vT7hGzHum4GZOVCM3I4NGoPJGikGEGF+51s+0Jj+t4Wmd7I7r5fUVz8xn6Gx1SRTa25IpMz/kA2NVm3sGFtWRFBq8KJdfzel2h4g6BJFqTtnDiFyNkRlZ9LzkmRIOB2H85JVLVJUXGvgZXOTFyPLMq1jIAE4KZ0suMR/e6XRYSBn4+aKAwR50mRMPLIdeAgmQjCyvNzZaMPfjEBoy+zoUK3kyWVLA1QP8c3YVSsGrVSq8e0e+Nif2bC7G/v2hQNidW6E/F jamesmcdermott@tests-MBP"
  ];
}
