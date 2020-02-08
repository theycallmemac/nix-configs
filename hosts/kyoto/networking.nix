{ lib, ... }: {
  # This file was populated at runtime with the networking
  # details gathered from the active system.
  networking = {
    nameservers = [
      "67.207.67.3"
      "67.207.67.2"
    ];
    defaultGateway = "178.62.64.1";
    defaultGateway6 = "2a03:b0c0:1:d0::1";
    dhcpcd.enable = false;
    usePredictableInterfaceNames = lib.mkForce true;
    interfaces = {
      eth0 = {
        ipv4.addresses = [
          { address="178.62.97.131"; prefixLength=18; }
{ address="10.16.0.6"; prefixLength=16; }
        ];
        ipv6.addresses = [
          { address="2a03:b0c0:1:d0::f9:7001"; prefixLength=64; }
{ address="fe80::78e5:6eff:fed5:b8c8"; prefixLength=64; }
        ];
        ipv4.routes = [ { address = "178.62.64.1"; prefixLength = 32; } ];
        ipv6.routes = [ { address = "2a03:b0c0:1:d0::1"; prefixLength = 32; } ];
      };

    };
  };
  services.udev.extraRules = ''
    ATTR{address}=="7a:e5:6e:d5:b8:c8", NAME="eth0"

  '';
  networking.firewall.allowedTCPPorts = [ 80 443 8002 ];
}

