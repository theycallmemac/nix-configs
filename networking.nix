{
  networking = {
    hostName = "ukiyo-e";
    firewall.allowedTCPPorts = [ 
      80 #http
      443 #https
    ]; 
  };
}


