{
  services.cron.systemCronJobs = [
    "0 12 * * 0 systemctl reload httpd.service" # pick up new ssl certs
  ];
}
