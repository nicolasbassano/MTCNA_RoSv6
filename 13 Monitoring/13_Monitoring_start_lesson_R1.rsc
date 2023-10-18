# oct/06/2023 18:56:01 by RouterOS 6.48.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip address
add address=192.168.0.1/24 interface=ether2 network=192.168.0.0
/ip dhcp-client
add disabled=no interface=ether1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
/system identity
set name=R1
