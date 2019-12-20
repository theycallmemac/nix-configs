{
  services.httpd.enable = true;
  services.httpd.adminAddr = "localhost";
  services.httpd.extraModules = [ "http2" ];

  services.httpd.virtualHosts =
  [
    {       
      hostName = "localhost";
      documentRoot = "/var/www/jamesmcdermott.ie/public";
      enableUserDir = true;
      serverAliases = [ "localhost" ];
      enableSSL = false;
    }
  ];
}
