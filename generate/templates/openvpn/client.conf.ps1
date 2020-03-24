@"
# See sample config file: https://github.com/OpenVPN/openvpn/blob/v2.4.8/sample/sample-config-files/client.conf
# redirect-gateway def1 bypass-dhcp
client
dev tun
proto udp
remote 10.8.0.1 1194
resolv-retry infinite
nobind
# user nobody
# group nobody
persist-key
persist-tun
ca pki/ca.crt
cert pki/issued/client.crt
key pki/private/client.key
remote-cert-tls server
tls-auth pki/ta.key 1
# key-direction 1
cipher AES-256-CBC
# auth SHA256
comp-lzo no
verb 3
# mute 20

"@
