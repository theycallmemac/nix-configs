{
  imports = [ 
    ./certs.nix
  ];
  services.httpd.enable = true;
  services.httpd.virtualHosts = {
    "localhosting.ie" = {
        documentRoot = "/var/www/localhosting.ie/public";
        adminAddr = "james.mcdermott7@mail.dcu.ie";
        forceSSL = true;
        enableACME = true;
    };
  };
}

