# oct/03/2023 19:45:46 by RouterOS 6.48.7
# software id = 
#
#
#
/interface list
add name=Neighbors
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/interface list member
add interface=ether4 list=Neighbors
/ip dhcp-client
add disabled=no interface=ether1
/system identity
set name=R2
