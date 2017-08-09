
* build   
docker build -t ss .

* about config    
mkdir -p /path/to/host-volume   
touch /path/to/host-volume/ssserver.conf

* run   
docker run -d --restart always -v /path/to/host-volume/:/mount-data -p ${tcp-port-host}:${tcp-port-container} -p ${udp-port-host}:${udp-port-container}/udp ss

