{lib, ...}:
{
  security.acme = {
    acceptTerms = true;
    certs = {
      "jamesmcdermott.ie" = {
        email = "james.mcdermott7@mail.dcu.ie";
        group = lib.mkForce "acme";
      };
      "destinycare.ie" = {
        email = "james.mcdermott7@mail.dcu.ie";
        group = lib.mkForce "acme";
      };
    };
  };
}
