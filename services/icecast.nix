{ config, lib, pkgs, ... }:
with lib;
let 
        cfg = config.services.icecast;
in {
	services.icecast.enable = true;
	services.icecast.hostname = "localhosting.ie";
	services.icecast.listen.port = 8002;
	services.icecast.admin.password = "testIce";
	services.icecast.logDir = "/var/log/icecast/";
	services.icecast.extraConf = ''
    <limits>
	<clients>500</clients>
	<sources>5</sources>
	<threadpool>5</threadpool>
	<queue-size>524288</queue-size>
	<client-timeout>30</client-timeout>
	<header-timeout>15</header-timeout>
	<source-timeout>10</source-timeout>
	<burst-size>65535</burst-size>
    </limits>

   <authentication>
	<relay-user>relay</relay-user>
	<relay-password>iG3ne]mo</relay-password>
	<admin-user>admin</admin-user>
	<admin-password>testIce</admin-password>
	<source-password>ice</source-password>
    </authentication>

    <directory>
	<yp-url-timeout>15</yp-url-timeout>
	<yp-url>http://dir.xiph.org/cgi-bin/yp-cgi</yp-url>
    </directory>

    <mount>
	<mount-name>/stream128.mp3</mount-name>
	<fallback-mount>/fallback.mp3</fallback-mount>
	<fallback-override>1</fallback-override>
	<fallback-when-full>1</fallback-when-full>
    </mount>

    <fileserve>1</fileserve>
      '';
}
