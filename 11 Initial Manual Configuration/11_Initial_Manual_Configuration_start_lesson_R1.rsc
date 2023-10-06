# oct/06/2023 18:35:15 by RouterOS 6.48.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip dhcp-client
add disabled=no interface=ether1
/system identity
set name=RouterOS
