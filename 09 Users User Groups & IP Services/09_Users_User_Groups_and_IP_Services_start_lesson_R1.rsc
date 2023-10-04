# oct/04/2023 19:00:00 by RouterOS 6.48.7
# software id = 
#
#
#
/interface list
add name=Neighbors
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip neighbor discovery-settings
set discover-interface-list=Neighbors
/interface list member
add interface=ether4 list=Neighbors
/ip dhcp-client
add disabled=no interface=ether1
/system identity
set name=R1
/tool romon
set enabled=yes secrets=123456
