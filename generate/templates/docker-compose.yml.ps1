@"
version: '2'
services:
  openvpn:
    container_name: openvpn
    image: theohbrothers/docker-openvpn:$( $VARIANT['tag'] )
    ports:
     - "1194:1194/udp"
    cap_add:
      - NET_ADMIN
    restart: unless-stopped
    volumes:
     - ./openvpn/server.conf:/etc/openvpn/server.conf
"@
