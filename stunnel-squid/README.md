## Setup the ssl-based web proxy

Keywords such as 'google' or 'youtube' may be detected if we use http proxy, 

and the traffic would be cut.

So, https proxy is useful for encrypting all the traffic.

# Usage

Run `./compose.sh` to start all. See more details from files under this folder.

The `stunnel.pem` needs to be replaced with your own certificate pair.

The new certificate pair's Common Name should match to hostname or IP of the proxy server.

