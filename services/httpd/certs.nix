{lib, ...}:
{
  security.acme = {
    acceptTerms = true;
    certs = {
      "localhosting.ie".email = "james.mcdermott7@mail.dcu.ie";
      "localhosting.ie".group = lib.mkForce "acme";
    };
  };
}
