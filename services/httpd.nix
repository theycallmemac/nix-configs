{
  services.httpd.enable = true;
  services.httpd.virtualHosts =
    { "localhosting.ie" = {
        documentRoot = "/var/www/localhosting.ie/public";
        adminAddr = "alice@example.org";
      };
    };
}

