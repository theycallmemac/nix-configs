{
  services.cron.systemCronJobs = [
    "0 07 * * 7 nix-store --optimise" # seek out identical files in the nix store
    "0 09 * * 7 nix-collect-garbage" # remove old unreference packages
    "0 12 * * 7 systemctl reload httpd.service" # pick up new ssl certs
  ];
}
