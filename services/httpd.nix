{
  services.httpd.enable = true;
  services.httpd.adminAddr = "james.mcdermott7@mail.dcu.ie";
  services.httpd.virtualHosts =
    [ { hostName = "localhosting.ie";
        documentRoot = "/var/www/jamesmcdermott.ie/public";
	globalRedirect = "https://localhosting.ie/";
      }
      { hostName = "localhosting.ie";
        documentRoot = "/var/www/jamesmcdermott.ie/public";
        enableSSL = true;
        sslServerCert = "/etc/letsencrypt/live/localhosting.ie/fullchain.pem";
        sslServerKey = "/etc/letsencrypt/live/localhosting.ie/privkey.pem";
      }
    ];
}
