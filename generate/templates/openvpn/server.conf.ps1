@"
# See sample config file: https://github.com/OpenVPN/openvpn/blob/v2.4.8/sample/sample-config-files/server.conf
port 1194
proto udp
dev tun
ca pki/ca.crt
cert pki/issued/server.crt
key pki/private/server.key
dh pki/dh.pem
crl-verify pki/crl.pem
server 10.8.0.0 255.255.255.0
ifconfig-pool-persist ipp.txt
client-config-dir ccd
keepalive 10 120
tls-auth pki/ta.key 0
cipher AES-256-CBC
max-clients 5
user nobody
group nogroup
persist-key
persist-tun
status server.status.log
# log-append server.log
verb 3
mute 20
explicit-exit-notify 1
"@
