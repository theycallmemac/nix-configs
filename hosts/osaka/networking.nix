{ lib, ... }: {
  # This file was populated at runtime with the networking
  # details gathered from the active system.
  networking = {
    nameservers = [
      "67.207.67.3"
      "67.207.67.2"
    ];
    defaultGateway = "209.97.128.1";
    defaultGateway6 = "2a03:b0c0:1:e0::1";
    dhcpcd.enable = false;
    usePredictableInterfaceNames = lib.mkForce true;
    interfaces = {
      eth0 = {
        ipv4.addresses = [
          { address="209.97.140.38"; prefixLength=20; }
{ address="10.16.0.7"; prefixLength=16; }
        ];
        ipv6.addresses = [
          { address="2a03:b0c0:1:e0::233:9001"; prefixLength=64; }
{ address="fe80::5c29:23ff:fe48:ab78"; prefixLength=64; }
        ];
        ipv4.routes = [ { address = "209.97.128.1"; prefixLength = 32; } ];
        ipv6.routes = [ { address = "2a03:b0c0:1:e0::1"; prefixLength = 32; } ];
      };
      
    };
  };
  services.udev.extraRules = ''
    ATTR{address}=="5e:29:23:48:ab:78", NAME="eth0"
    
  '';
}
