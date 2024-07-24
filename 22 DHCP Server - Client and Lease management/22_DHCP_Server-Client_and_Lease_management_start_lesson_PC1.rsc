# nov/09/2023 19:03:27 by RouterOS 6.48.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip dhcp-client
add disabled=no interface=ether1
/system identity
set name=PC1
