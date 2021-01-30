{
  imports = [ 
    ./certs.nix
  ];
  services.httpd.enable = true;
  services.httpd.virtualHosts = {
   "jamesmcdermott.ie" = {
        documentRoot = "/var/www/jamesmcdermott.ie/public";
        adminAddr = "james.mcdermott7@mail.dcu.ie";
        forceSSL = true;
        enableACME = true;
    };
    "destinycare.ie" = {
        documentRoot = "/var/www/destinycare.ie";
        adminAddr = "james.mcdermott7@mail.dcu.ie";
        forceSSL = true;
        enableACME = true;
    };
  };
}

