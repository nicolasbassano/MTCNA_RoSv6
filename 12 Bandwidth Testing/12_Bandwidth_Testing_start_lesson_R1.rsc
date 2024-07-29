# jul/29/2024 20:10:20 by RouterOS 6.48.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip address
add address=192.168.88.1/24 interface=ether4 network=192.168.88.0
/ip dhcp-client
add disabled=no interface=ether1
/system identity
set name=R1
/tool bandwidth-server
set enabled=no
